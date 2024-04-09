; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40034 () Bool)

(assert start!40034)

(declare-fun b_free!10293 () Bool)

(declare-fun b_next!10293 () Bool)

(assert (=> start!40034 (= b_free!10293 (not b_next!10293))))

(declare-fun tp!36407 () Bool)

(declare-fun b_and!18263 () Bool)

(assert (=> start!40034 (= tp!36407 b_and!18263)))

(declare-fun b!436089 () Bool)

(declare-fun res!257128 () Bool)

(declare-fun e!257550 () Bool)

(assert (=> b!436089 (=> (not res!257128) (not e!257550))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436089 (= res!257128 (validKeyInArray!0 k0!794))))

(declare-fun b!436091 () Bool)

(declare-fun res!257121 () Bool)

(assert (=> b!436091 (=> (not res!257121) (not e!257550))))

(declare-datatypes ((array!26693 0))(
  ( (array!26694 (arr!12793 (Array (_ BitVec 32) (_ BitVec 64))) (size!13145 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26693)

(declare-fun arrayContainsKey!0 (array!26693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436091 (= res!257121 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!436092 () Bool)

(declare-fun e!257551 () Bool)

(assert (=> b!436092 (= e!257551 true)))

(declare-datatypes ((V!16365 0))(
  ( (V!16366 (val!5767 Int)) )
))
(declare-datatypes ((tuple2!7572 0))(
  ( (tuple2!7573 (_1!3796 (_ BitVec 64)) (_2!3796 V!16365)) )
))
(declare-datatypes ((List!7615 0))(
  ( (Nil!7612) (Cons!7611 (h!8467 tuple2!7572) (t!13365 List!7615)) )
))
(declare-datatypes ((ListLongMap!6499 0))(
  ( (ListLongMap!6500 (toList!3265 List!7615)) )
))
(declare-fun lt!201063 () ListLongMap!6499)

(declare-fun lt!201072 () ListLongMap!6499)

(declare-fun lt!201070 () tuple2!7572)

(declare-fun lt!201071 () tuple2!7572)

(declare-fun +!1409 (ListLongMap!6499 tuple2!7572) ListLongMap!6499)

(assert (=> b!436092 (= lt!201072 (+!1409 (+!1409 lt!201063 lt!201071) lt!201070))))

(declare-fun lt!201064 () V!16365)

(declare-datatypes ((Unit!12924 0))(
  ( (Unit!12925) )
))
(declare-fun lt!201066 () Unit!12924)

(declare-fun v!412 () V!16365)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!412 (ListLongMap!6499 (_ BitVec 64) V!16365 (_ BitVec 64) V!16365) Unit!12924)

(assert (=> b!436092 (= lt!201066 (addCommutativeForDiffKeys!412 lt!201063 k0!794 v!412 (select (arr!12793 _keys!709) from!863) lt!201064))))

(declare-fun b!436093 () Bool)

(declare-fun e!257552 () Bool)

(declare-fun tp_is_empty!11445 () Bool)

(assert (=> b!436093 (= e!257552 tp_is_empty!11445)))

(declare-fun b!436094 () Bool)

(declare-fun e!257548 () Bool)

(declare-fun mapRes!18789 () Bool)

(assert (=> b!436094 (= e!257548 (and e!257552 mapRes!18789))))

(declare-fun condMapEmpty!18789 () Bool)

(declare-datatypes ((ValueCell!5379 0))(
  ( (ValueCellFull!5379 (v!8010 V!16365)) (EmptyCell!5379) )
))
(declare-datatypes ((array!26695 0))(
  ( (array!26696 (arr!12794 (Array (_ BitVec 32) ValueCell!5379)) (size!13146 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26695)

(declare-fun mapDefault!18789 () ValueCell!5379)

(assert (=> b!436094 (= condMapEmpty!18789 (= (arr!12794 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5379)) mapDefault!18789)))))

(declare-fun b!436095 () Bool)

(declare-fun e!257546 () Bool)

(assert (=> b!436095 (= e!257546 e!257551)))

(declare-fun res!257129 () Bool)

(assert (=> b!436095 (=> res!257129 e!257551)))

(assert (=> b!436095 (= res!257129 (= k0!794 (select (arr!12793 _keys!709) from!863)))))

(assert (=> b!436095 (not (= (select (arr!12793 _keys!709) from!863) k0!794))))

(declare-fun lt!201061 () Unit!12924)

(declare-fun e!257549 () Unit!12924)

(assert (=> b!436095 (= lt!201061 e!257549)))

(declare-fun c!55700 () Bool)

(assert (=> b!436095 (= c!55700 (= (select (arr!12793 _keys!709) from!863) k0!794))))

(declare-fun lt!201069 () ListLongMap!6499)

(assert (=> b!436095 (= lt!201069 lt!201072)))

(declare-fun lt!201065 () ListLongMap!6499)

(assert (=> b!436095 (= lt!201072 (+!1409 lt!201065 lt!201071))))

(assert (=> b!436095 (= lt!201071 (tuple2!7573 (select (arr!12793 _keys!709) from!863) lt!201064))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6387 (ValueCell!5379 V!16365) V!16365)

(declare-fun dynLambda!836 (Int (_ BitVec 64)) V!16365)

(assert (=> b!436095 (= lt!201064 (get!6387 (select (arr!12794 _values!549) from!863) (dynLambda!836 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436096 () Bool)

(declare-fun res!257124 () Bool)

(assert (=> b!436096 (=> (not res!257124) (not e!257550))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!436096 (= res!257124 (and (= (size!13146 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13145 _keys!709) (size!13146 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436097 () Bool)

(declare-fun e!257554 () Bool)

(assert (=> b!436097 (= e!257554 tp_is_empty!11445)))

(declare-fun b!436098 () Bool)

(declare-fun res!257126 () Bool)

(declare-fun e!257553 () Bool)

(assert (=> b!436098 (=> (not res!257126) (not e!257553))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436098 (= res!257126 (bvsle from!863 i!563))))

(declare-fun res!257122 () Bool)

(assert (=> start!40034 (=> (not res!257122) (not e!257550))))

(assert (=> start!40034 (= res!257122 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13145 _keys!709))))))

(assert (=> start!40034 e!257550))

(assert (=> start!40034 tp_is_empty!11445))

(assert (=> start!40034 tp!36407))

(assert (=> start!40034 true))

(declare-fun array_inv!9290 (array!26695) Bool)

(assert (=> start!40034 (and (array_inv!9290 _values!549) e!257548)))

(declare-fun array_inv!9291 (array!26693) Bool)

(assert (=> start!40034 (array_inv!9291 _keys!709)))

(declare-fun b!436090 () Bool)

(declare-fun res!257117 () Bool)

(assert (=> b!436090 (=> (not res!257117) (not e!257550))))

(assert (=> b!436090 (= res!257117 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13145 _keys!709))))))

(declare-fun b!436099 () Bool)

(declare-fun e!257547 () Bool)

(assert (=> b!436099 (= e!257547 (not e!257546))))

(declare-fun res!257120 () Bool)

(assert (=> b!436099 (=> res!257120 e!257546)))

(assert (=> b!436099 (= res!257120 (not (validKeyInArray!0 (select (arr!12793 _keys!709) from!863))))))

(declare-fun lt!201068 () ListLongMap!6499)

(assert (=> b!436099 (= lt!201068 lt!201065)))

(assert (=> b!436099 (= lt!201065 (+!1409 lt!201063 lt!201070))))

(declare-fun lt!201062 () array!26695)

(declare-fun minValue!515 () V!16365)

(declare-fun lt!201067 () array!26693)

(declare-fun zeroValue!515 () V!16365)

(declare-fun getCurrentListMapNoExtraKeys!1447 (array!26693 array!26695 (_ BitVec 32) (_ BitVec 32) V!16365 V!16365 (_ BitVec 32) Int) ListLongMap!6499)

(assert (=> b!436099 (= lt!201068 (getCurrentListMapNoExtraKeys!1447 lt!201067 lt!201062 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!436099 (= lt!201070 (tuple2!7573 k0!794 v!412))))

(assert (=> b!436099 (= lt!201063 (getCurrentListMapNoExtraKeys!1447 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!201059 () Unit!12924)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!587 (array!26693 array!26695 (_ BitVec 32) (_ BitVec 32) V!16365 V!16365 (_ BitVec 32) (_ BitVec 64) V!16365 (_ BitVec 32) Int) Unit!12924)

(assert (=> b!436099 (= lt!201059 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!587 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18789 () Bool)

(declare-fun tp!36408 () Bool)

(assert (=> mapNonEmpty!18789 (= mapRes!18789 (and tp!36408 e!257554))))

(declare-fun mapKey!18789 () (_ BitVec 32))

(declare-fun mapValue!18789 () ValueCell!5379)

(declare-fun mapRest!18789 () (Array (_ BitVec 32) ValueCell!5379))

(assert (=> mapNonEmpty!18789 (= (arr!12794 _values!549) (store mapRest!18789 mapKey!18789 mapValue!18789))))

(declare-fun b!436100 () Bool)

(declare-fun Unit!12926 () Unit!12924)

(assert (=> b!436100 (= e!257549 Unit!12926)))

(declare-fun lt!201060 () Unit!12924)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26693 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12924)

(assert (=> b!436100 (= lt!201060 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!436100 false))

(declare-fun b!436101 () Bool)

(assert (=> b!436101 (= e!257553 e!257547)))

(declare-fun res!257130 () Bool)

(assert (=> b!436101 (=> (not res!257130) (not e!257547))))

(assert (=> b!436101 (= res!257130 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!436101 (= lt!201069 (getCurrentListMapNoExtraKeys!1447 lt!201067 lt!201062 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!436101 (= lt!201062 (array!26696 (store (arr!12794 _values!549) i!563 (ValueCellFull!5379 v!412)) (size!13146 _values!549)))))

(declare-fun lt!201058 () ListLongMap!6499)

(assert (=> b!436101 (= lt!201058 (getCurrentListMapNoExtraKeys!1447 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436102 () Bool)

(declare-fun res!257118 () Bool)

(assert (=> b!436102 (=> (not res!257118) (not e!257550))))

(declare-datatypes ((List!7616 0))(
  ( (Nil!7613) (Cons!7612 (h!8468 (_ BitVec 64)) (t!13366 List!7616)) )
))
(declare-fun arrayNoDuplicates!0 (array!26693 (_ BitVec 32) List!7616) Bool)

(assert (=> b!436102 (= res!257118 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7613))))

(declare-fun b!436103 () Bool)

(declare-fun res!257116 () Bool)

(assert (=> b!436103 (=> (not res!257116) (not e!257550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436103 (= res!257116 (validMask!0 mask!1025))))

(declare-fun b!436104 () Bool)

(declare-fun res!257119 () Bool)

(assert (=> b!436104 (=> (not res!257119) (not e!257553))))

(assert (=> b!436104 (= res!257119 (arrayNoDuplicates!0 lt!201067 #b00000000000000000000000000000000 Nil!7613))))

(declare-fun mapIsEmpty!18789 () Bool)

(assert (=> mapIsEmpty!18789 mapRes!18789))

(declare-fun b!436105 () Bool)

(declare-fun res!257127 () Bool)

(assert (=> b!436105 (=> (not res!257127) (not e!257550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26693 (_ BitVec 32)) Bool)

(assert (=> b!436105 (= res!257127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436106 () Bool)

(declare-fun Unit!12927 () Unit!12924)

(assert (=> b!436106 (= e!257549 Unit!12927)))

(declare-fun b!436107 () Bool)

(declare-fun res!257123 () Bool)

(assert (=> b!436107 (=> (not res!257123) (not e!257550))))

(assert (=> b!436107 (= res!257123 (or (= (select (arr!12793 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12793 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436108 () Bool)

(assert (=> b!436108 (= e!257550 e!257553)))

(declare-fun res!257125 () Bool)

(assert (=> b!436108 (=> (not res!257125) (not e!257553))))

(assert (=> b!436108 (= res!257125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201067 mask!1025))))

(assert (=> b!436108 (= lt!201067 (array!26694 (store (arr!12793 _keys!709) i!563 k0!794) (size!13145 _keys!709)))))

(assert (= (and start!40034 res!257122) b!436103))

(assert (= (and b!436103 res!257116) b!436096))

(assert (= (and b!436096 res!257124) b!436105))

(assert (= (and b!436105 res!257127) b!436102))

(assert (= (and b!436102 res!257118) b!436090))

(assert (= (and b!436090 res!257117) b!436089))

(assert (= (and b!436089 res!257128) b!436107))

(assert (= (and b!436107 res!257123) b!436091))

(assert (= (and b!436091 res!257121) b!436108))

(assert (= (and b!436108 res!257125) b!436104))

(assert (= (and b!436104 res!257119) b!436098))

(assert (= (and b!436098 res!257126) b!436101))

(assert (= (and b!436101 res!257130) b!436099))

(assert (= (and b!436099 (not res!257120)) b!436095))

(assert (= (and b!436095 c!55700) b!436100))

(assert (= (and b!436095 (not c!55700)) b!436106))

(assert (= (and b!436095 (not res!257129)) b!436092))

(assert (= (and b!436094 condMapEmpty!18789) mapIsEmpty!18789))

(assert (= (and b!436094 (not condMapEmpty!18789)) mapNonEmpty!18789))

(get-info :version)

(assert (= (and mapNonEmpty!18789 ((_ is ValueCellFull!5379) mapValue!18789)) b!436097))

(assert (= (and b!436094 ((_ is ValueCellFull!5379) mapDefault!18789)) b!436093))

(assert (= start!40034 b!436094))

(declare-fun b_lambda!9411 () Bool)

(assert (=> (not b_lambda!9411) (not b!436095)))

(declare-fun t!13364 () Bool)

(declare-fun tb!3707 () Bool)

(assert (=> (and start!40034 (= defaultEntry!557 defaultEntry!557) t!13364) tb!3707))

(declare-fun result!6933 () Bool)

(assert (=> tb!3707 (= result!6933 tp_is_empty!11445)))

(assert (=> b!436095 t!13364))

(declare-fun b_and!18265 () Bool)

(assert (= b_and!18263 (and (=> t!13364 result!6933) b_and!18265)))

(declare-fun m!423959 () Bool)

(assert (=> b!436095 m!423959))

(declare-fun m!423961 () Bool)

(assert (=> b!436095 m!423961))

(declare-fun m!423963 () Bool)

(assert (=> b!436095 m!423963))

(declare-fun m!423965 () Bool)

(assert (=> b!436095 m!423965))

(assert (=> b!436095 m!423963))

(assert (=> b!436095 m!423961))

(declare-fun m!423967 () Bool)

(assert (=> b!436095 m!423967))

(declare-fun m!423969 () Bool)

(assert (=> mapNonEmpty!18789 m!423969))

(declare-fun m!423971 () Bool)

(assert (=> b!436092 m!423971))

(assert (=> b!436092 m!423971))

(declare-fun m!423973 () Bool)

(assert (=> b!436092 m!423973))

(assert (=> b!436092 m!423959))

(assert (=> b!436092 m!423959))

(declare-fun m!423975 () Bool)

(assert (=> b!436092 m!423975))

(assert (=> b!436099 m!423959))

(declare-fun m!423977 () Bool)

(assert (=> b!436099 m!423977))

(declare-fun m!423979 () Bool)

(assert (=> b!436099 m!423979))

(declare-fun m!423981 () Bool)

(assert (=> b!436099 m!423981))

(assert (=> b!436099 m!423959))

(declare-fun m!423983 () Bool)

(assert (=> b!436099 m!423983))

(declare-fun m!423985 () Bool)

(assert (=> b!436099 m!423985))

(declare-fun m!423987 () Bool)

(assert (=> b!436089 m!423987))

(declare-fun m!423989 () Bool)

(assert (=> b!436105 m!423989))

(declare-fun m!423991 () Bool)

(assert (=> start!40034 m!423991))

(declare-fun m!423993 () Bool)

(assert (=> start!40034 m!423993))

(declare-fun m!423995 () Bool)

(assert (=> b!436091 m!423995))

(declare-fun m!423997 () Bool)

(assert (=> b!436102 m!423997))

(declare-fun m!423999 () Bool)

(assert (=> b!436103 m!423999))

(declare-fun m!424001 () Bool)

(assert (=> b!436108 m!424001))

(declare-fun m!424003 () Bool)

(assert (=> b!436108 m!424003))

(declare-fun m!424005 () Bool)

(assert (=> b!436107 m!424005))

(declare-fun m!424007 () Bool)

(assert (=> b!436101 m!424007))

(declare-fun m!424009 () Bool)

(assert (=> b!436101 m!424009))

(declare-fun m!424011 () Bool)

(assert (=> b!436101 m!424011))

(declare-fun m!424013 () Bool)

(assert (=> b!436104 m!424013))

(declare-fun m!424015 () Bool)

(assert (=> b!436100 m!424015))

(check-sat (not b!436104) (not mapNonEmpty!18789) (not start!40034) (not b!436100) (not b!436089) b_and!18265 (not b_lambda!9411) (not b_next!10293) (not b!436101) tp_is_empty!11445 (not b!436092) (not b!436091) (not b!436099) (not b!436103) (not b!436108) (not b!436095) (not b!436105) (not b!436102))
(check-sat b_and!18265 (not b_next!10293))
