; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39308 () Bool)

(assert start!39308)

(declare-fun b_free!9567 () Bool)

(declare-fun b_next!9567 () Bool)

(assert (=> start!39308 (= b_free!9567 (not b_next!9567))))

(declare-fun tp!34229 () Bool)

(declare-fun b_and!17027 () Bool)

(assert (=> start!39308 (= tp!34229 b_and!17027)))

(declare-fun b!415819 () Bool)

(declare-fun res!242046 () Bool)

(declare-fun e!248300 () Bool)

(assert (=> b!415819 (=> (not res!242046) (not e!248300))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25273 0))(
  ( (array!25274 (arr!12083 (Array (_ BitVec 32) (_ BitVec 64))) (size!12435 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25273)

(assert (=> b!415819 (= res!242046 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12435 _keys!709))))))

(declare-fun b!415820 () Bool)

(declare-fun e!248297 () Bool)

(declare-fun tp_is_empty!10719 () Bool)

(assert (=> b!415820 (= e!248297 tp_is_empty!10719)))

(declare-fun b!415821 () Bool)

(declare-fun res!242056 () Bool)

(declare-fun e!248299 () Bool)

(assert (=> b!415821 (=> (not res!242056) (not e!248299))))

(declare-fun lt!190391 () array!25273)

(declare-datatypes ((List!7023 0))(
  ( (Nil!7020) (Cons!7019 (h!7875 (_ BitVec 64)) (t!12263 List!7023)) )
))
(declare-fun arrayNoDuplicates!0 (array!25273 (_ BitVec 32) List!7023) Bool)

(assert (=> b!415821 (= res!242056 (arrayNoDuplicates!0 lt!190391 #b00000000000000000000000000000000 Nil!7020))))

(declare-fun b!415822 () Bool)

(declare-fun e!248303 () Bool)

(declare-fun e!248302 () Bool)

(assert (=> b!415822 (= e!248303 (not e!248302))))

(declare-fun res!242058 () Bool)

(assert (=> b!415822 (=> res!242058 e!248302)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415822 (= res!242058 (validKeyInArray!0 (select (arr!12083 _keys!709) from!863)))))

(declare-fun e!248301 () Bool)

(assert (=> b!415822 e!248301))

(declare-fun c!54989 () Bool)

(assert (=> b!415822 (= c!54989 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15397 0))(
  ( (V!15398 (val!5404 Int)) )
))
(declare-fun minValue!515 () V!15397)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5016 0))(
  ( (ValueCellFull!5016 (v!7647 V!15397)) (EmptyCell!5016) )
))
(declare-datatypes ((array!25275 0))(
  ( (array!25276 (arr!12084 (Array (_ BitVec 32) ValueCell!5016)) (size!12436 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25275)

(declare-fun zeroValue!515 () V!15397)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15397)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12251 0))(
  ( (Unit!12252) )
))
(declare-fun lt!190399 () Unit!12251)

(declare-fun defaultEntry!557 () Int)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!388 (array!25273 array!25275 (_ BitVec 32) (_ BitVec 32) V!15397 V!15397 (_ BitVec 32) (_ BitVec 64) V!15397 (_ BitVec 32) Int) Unit!12251)

(assert (=> b!415822 (= lt!190399 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!388 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415823 () Bool)

(assert (=> b!415823 (= e!248300 e!248299)))

(declare-fun res!242049 () Bool)

(assert (=> b!415823 (=> (not res!242049) (not e!248299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25273 (_ BitVec 32)) Bool)

(assert (=> b!415823 (= res!242049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190391 mask!1025))))

(assert (=> b!415823 (= lt!190391 (array!25274 (store (arr!12083 _keys!709) i!563 k0!794) (size!12435 _keys!709)))))

(declare-fun b!415824 () Bool)

(declare-fun res!242057 () Bool)

(assert (=> b!415824 (=> (not res!242057) (not e!248300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415824 (= res!242057 (validMask!0 mask!1025))))

(declare-fun b!415825 () Bool)

(declare-fun res!242054 () Bool)

(assert (=> b!415825 (=> (not res!242054) (not e!248299))))

(assert (=> b!415825 (= res!242054 (bvsle from!863 i!563))))

(declare-fun b!415826 () Bool)

(declare-fun e!248298 () Bool)

(declare-fun mapRes!17700 () Bool)

(assert (=> b!415826 (= e!248298 (and e!248297 mapRes!17700))))

(declare-fun condMapEmpty!17700 () Bool)

(declare-fun mapDefault!17700 () ValueCell!5016)

(assert (=> b!415826 (= condMapEmpty!17700 (= (arr!12084 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5016)) mapDefault!17700)))))

(declare-fun mapNonEmpty!17700 () Bool)

(declare-fun tp!34230 () Bool)

(declare-fun e!248304 () Bool)

(assert (=> mapNonEmpty!17700 (= mapRes!17700 (and tp!34230 e!248304))))

(declare-fun mapRest!17700 () (Array (_ BitVec 32) ValueCell!5016))

(declare-fun mapValue!17700 () ValueCell!5016)

(declare-fun mapKey!17700 () (_ BitVec 32))

(assert (=> mapNonEmpty!17700 (= (arr!12084 _values!549) (store mapRest!17700 mapKey!17700 mapValue!17700))))

(declare-fun b!415827 () Bool)

(declare-fun res!242045 () Bool)

(assert (=> b!415827 (=> (not res!242045) (not e!248300))))

(assert (=> b!415827 (= res!242045 (and (= (size!12436 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12435 _keys!709) (size!12436 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415828 () Bool)

(assert (=> b!415828 (= e!248302 true)))

(declare-datatypes ((tuple2!6968 0))(
  ( (tuple2!6969 (_1!3494 (_ BitVec 64)) (_2!3494 V!15397)) )
))
(declare-fun lt!190393 () tuple2!6968)

(declare-fun lt!190400 () V!15397)

(declare-datatypes ((List!7024 0))(
  ( (Nil!7021) (Cons!7020 (h!7876 tuple2!6968) (t!12264 List!7024)) )
))
(declare-datatypes ((ListLongMap!5895 0))(
  ( (ListLongMap!5896 (toList!2963 List!7024)) )
))
(declare-fun lt!190401 () ListLongMap!5895)

(declare-fun +!1176 (ListLongMap!5895 tuple2!6968) ListLongMap!5895)

(assert (=> b!415828 (= (+!1176 lt!190401 lt!190393) (+!1176 (+!1176 lt!190401 (tuple2!6969 k0!794 lt!190400)) lt!190393))))

(declare-fun lt!190392 () V!15397)

(assert (=> b!415828 (= lt!190393 (tuple2!6969 k0!794 lt!190392))))

(declare-fun lt!190396 () Unit!12251)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!1 (ListLongMap!5895 (_ BitVec 64) V!15397 V!15397) Unit!12251)

(assert (=> b!415828 (= lt!190396 (addSameAsAddTwiceSameKeyDiffValues!1 lt!190401 k0!794 lt!190400 lt!190392))))

(declare-fun lt!190394 () V!15397)

(declare-fun get!5972 (ValueCell!5016 V!15397) V!15397)

(assert (=> b!415828 (= lt!190400 (get!5972 (select (arr!12084 _values!549) from!863) lt!190394))))

(declare-fun lt!190395 () ListLongMap!5895)

(assert (=> b!415828 (= lt!190395 (+!1176 lt!190401 (tuple2!6969 (select (arr!12083 lt!190391) from!863) lt!190392)))))

(assert (=> b!415828 (= lt!190392 (get!5972 (select (store (arr!12084 _values!549) i!563 (ValueCellFull!5016 v!412)) from!863) lt!190394))))

(declare-fun dynLambda!663 (Int (_ BitVec 64)) V!15397)

(assert (=> b!415828 (= lt!190394 (dynLambda!663 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!190398 () array!25275)

(declare-fun getCurrentListMapNoExtraKeys!1167 (array!25273 array!25275 (_ BitVec 32) (_ BitVec 32) V!15397 V!15397 (_ BitVec 32) Int) ListLongMap!5895)

(assert (=> b!415828 (= lt!190401 (getCurrentListMapNoExtraKeys!1167 lt!190391 lt!190398 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415829 () Bool)

(declare-fun res!242052 () Bool)

(assert (=> b!415829 (=> (not res!242052) (not e!248300))))

(assert (=> b!415829 (= res!242052 (or (= (select (arr!12083 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12083 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!242050 () Bool)

(assert (=> start!39308 (=> (not res!242050) (not e!248300))))

(assert (=> start!39308 (= res!242050 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12435 _keys!709))))))

(assert (=> start!39308 e!248300))

(assert (=> start!39308 tp_is_empty!10719))

(assert (=> start!39308 tp!34229))

(assert (=> start!39308 true))

(declare-fun array_inv!8812 (array!25275) Bool)

(assert (=> start!39308 (and (array_inv!8812 _values!549) e!248298)))

(declare-fun array_inv!8813 (array!25273) Bool)

(assert (=> start!39308 (array_inv!8813 _keys!709)))

(declare-fun b!415830 () Bool)

(declare-fun call!28877 () ListLongMap!5895)

(declare-fun call!28876 () ListLongMap!5895)

(assert (=> b!415830 (= e!248301 (= call!28877 call!28876))))

(declare-fun b!415831 () Bool)

(declare-fun res!242048 () Bool)

(assert (=> b!415831 (=> (not res!242048) (not e!248300))))

(assert (=> b!415831 (= res!242048 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7020))))

(declare-fun bm!28873 () Bool)

(assert (=> bm!28873 (= call!28877 (getCurrentListMapNoExtraKeys!1167 (ite c!54989 _keys!709 lt!190391) (ite c!54989 _values!549 lt!190398) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415832 () Bool)

(assert (=> b!415832 (= e!248304 tp_is_empty!10719)))

(declare-fun b!415833 () Bool)

(assert (=> b!415833 (= e!248301 (= call!28876 (+!1176 call!28877 (tuple2!6969 k0!794 v!412))))))

(declare-fun b!415834 () Bool)

(declare-fun res!242051 () Bool)

(assert (=> b!415834 (=> (not res!242051) (not e!248300))))

(assert (=> b!415834 (= res!242051 (validKeyInArray!0 k0!794))))

(declare-fun b!415835 () Bool)

(declare-fun res!242047 () Bool)

(assert (=> b!415835 (=> (not res!242047) (not e!248300))))

(declare-fun arrayContainsKey!0 (array!25273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415835 (= res!242047 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!415836 () Bool)

(assert (=> b!415836 (= e!248299 e!248303)))

(declare-fun res!242053 () Bool)

(assert (=> b!415836 (=> (not res!242053) (not e!248303))))

(assert (=> b!415836 (= res!242053 (= from!863 i!563))))

(assert (=> b!415836 (= lt!190395 (getCurrentListMapNoExtraKeys!1167 lt!190391 lt!190398 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415836 (= lt!190398 (array!25276 (store (arr!12084 _values!549) i!563 (ValueCellFull!5016 v!412)) (size!12436 _values!549)))))

(declare-fun lt!190397 () ListLongMap!5895)

(assert (=> b!415836 (= lt!190397 (getCurrentListMapNoExtraKeys!1167 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!28874 () Bool)

(assert (=> bm!28874 (= call!28876 (getCurrentListMapNoExtraKeys!1167 (ite c!54989 lt!190391 _keys!709) (ite c!54989 lt!190398 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17700 () Bool)

(assert (=> mapIsEmpty!17700 mapRes!17700))

(declare-fun b!415837 () Bool)

(declare-fun res!242055 () Bool)

(assert (=> b!415837 (=> (not res!242055) (not e!248300))))

(assert (=> b!415837 (= res!242055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39308 res!242050) b!415824))

(assert (= (and b!415824 res!242057) b!415827))

(assert (= (and b!415827 res!242045) b!415837))

(assert (= (and b!415837 res!242055) b!415831))

(assert (= (and b!415831 res!242048) b!415819))

(assert (= (and b!415819 res!242046) b!415834))

(assert (= (and b!415834 res!242051) b!415829))

(assert (= (and b!415829 res!242052) b!415835))

(assert (= (and b!415835 res!242047) b!415823))

(assert (= (and b!415823 res!242049) b!415821))

(assert (= (and b!415821 res!242056) b!415825))

(assert (= (and b!415825 res!242054) b!415836))

(assert (= (and b!415836 res!242053) b!415822))

(assert (= (and b!415822 c!54989) b!415833))

(assert (= (and b!415822 (not c!54989)) b!415830))

(assert (= (or b!415833 b!415830) bm!28874))

(assert (= (or b!415833 b!415830) bm!28873))

(assert (= (and b!415822 (not res!242058)) b!415828))

(assert (= (and b!415826 condMapEmpty!17700) mapIsEmpty!17700))

(assert (= (and b!415826 (not condMapEmpty!17700)) mapNonEmpty!17700))

(get-info :version)

(assert (= (and mapNonEmpty!17700 ((_ is ValueCellFull!5016) mapValue!17700)) b!415832))

(assert (= (and b!415826 ((_ is ValueCellFull!5016) mapDefault!17700)) b!415820))

(assert (= start!39308 b!415826))

(declare-fun b_lambda!8901 () Bool)

(assert (=> (not b_lambda!8901) (not b!415828)))

(declare-fun t!12262 () Bool)

(declare-fun tb!3197 () Bool)

(assert (=> (and start!39308 (= defaultEntry!557 defaultEntry!557) t!12262) tb!3197))

(declare-fun result!5913 () Bool)

(assert (=> tb!3197 (= result!5913 tp_is_empty!10719)))

(assert (=> b!415828 t!12262))

(declare-fun b_and!17029 () Bool)

(assert (= b_and!17027 (and (=> t!12262 result!5913) b_and!17029)))

(declare-fun m!404961 () Bool)

(assert (=> b!415828 m!404961))

(declare-fun m!404963 () Bool)

(assert (=> b!415828 m!404963))

(declare-fun m!404965 () Bool)

(assert (=> b!415828 m!404965))

(declare-fun m!404967 () Bool)

(assert (=> b!415828 m!404967))

(declare-fun m!404969 () Bool)

(assert (=> b!415828 m!404969))

(declare-fun m!404971 () Bool)

(assert (=> b!415828 m!404971))

(declare-fun m!404973 () Bool)

(assert (=> b!415828 m!404973))

(declare-fun m!404975 () Bool)

(assert (=> b!415828 m!404975))

(declare-fun m!404977 () Bool)

(assert (=> b!415828 m!404977))

(declare-fun m!404979 () Bool)

(assert (=> b!415828 m!404979))

(assert (=> b!415828 m!404977))

(declare-fun m!404981 () Bool)

(assert (=> b!415828 m!404981))

(declare-fun m!404983 () Bool)

(assert (=> b!415828 m!404983))

(assert (=> b!415828 m!404981))

(declare-fun m!404985 () Bool)

(assert (=> b!415828 m!404985))

(assert (=> b!415828 m!404963))

(declare-fun m!404987 () Bool)

(assert (=> b!415824 m!404987))

(declare-fun m!404989 () Bool)

(assert (=> bm!28873 m!404989))

(declare-fun m!404991 () Bool)

(assert (=> b!415835 m!404991))

(declare-fun m!404993 () Bool)

(assert (=> b!415836 m!404993))

(assert (=> b!415836 m!404971))

(declare-fun m!404995 () Bool)

(assert (=> b!415836 m!404995))

(declare-fun m!404997 () Bool)

(assert (=> b!415837 m!404997))

(declare-fun m!404999 () Bool)

(assert (=> b!415821 m!404999))

(declare-fun m!405001 () Bool)

(assert (=> b!415833 m!405001))

(declare-fun m!405003 () Bool)

(assert (=> b!415823 m!405003))

(declare-fun m!405005 () Bool)

(assert (=> b!415823 m!405005))

(declare-fun m!405007 () Bool)

(assert (=> b!415822 m!405007))

(assert (=> b!415822 m!405007))

(declare-fun m!405009 () Bool)

(assert (=> b!415822 m!405009))

(declare-fun m!405011 () Bool)

(assert (=> b!415822 m!405011))

(declare-fun m!405013 () Bool)

(assert (=> b!415831 m!405013))

(declare-fun m!405015 () Bool)

(assert (=> start!39308 m!405015))

(declare-fun m!405017 () Bool)

(assert (=> start!39308 m!405017))

(declare-fun m!405019 () Bool)

(assert (=> b!415834 m!405019))

(declare-fun m!405021 () Bool)

(assert (=> mapNonEmpty!17700 m!405021))

(declare-fun m!405023 () Bool)

(assert (=> bm!28874 m!405023))

(declare-fun m!405025 () Bool)

(assert (=> b!415829 m!405025))

(check-sat (not b!415828) (not b!415833) (not start!39308) (not b!415834) (not b!415822) (not b!415837) (not b!415835) b_and!17029 (not mapNonEmpty!17700) (not b!415823) (not b!415821) (not b_next!9567) (not bm!28874) (not b!415836) (not b!415824) tp_is_empty!10719 (not bm!28873) (not b_lambda!8901) (not b!415831))
(check-sat b_and!17029 (not b_next!9567))
