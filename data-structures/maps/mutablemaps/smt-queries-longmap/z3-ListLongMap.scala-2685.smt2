; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39938 () Bool)

(assert start!39938)

(declare-fun b_free!10197 () Bool)

(declare-fun b_next!10197 () Bool)

(assert (=> start!39938 (= b_free!10197 (not b_next!10197))))

(declare-fun tp!36119 () Bool)

(declare-fun b_and!18071 () Bool)

(assert (=> start!39938 (= tp!36119 b_and!18071)))

(declare-fun res!254959 () Bool)

(declare-fun e!256107 () Bool)

(assert (=> start!39938 (=> (not res!254959) (not e!256107))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26507 0))(
  ( (array!26508 (arr!12700 (Array (_ BitVec 32) (_ BitVec 64))) (size!13052 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26507)

(assert (=> start!39938 (= res!254959 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13052 _keys!709))))))

(assert (=> start!39938 e!256107))

(declare-fun tp_is_empty!11349 () Bool)

(assert (=> start!39938 tp_is_empty!11349))

(assert (=> start!39938 tp!36119))

(assert (=> start!39938 true))

(declare-datatypes ((V!16237 0))(
  ( (V!16238 (val!5719 Int)) )
))
(declare-datatypes ((ValueCell!5331 0))(
  ( (ValueCellFull!5331 (v!7962 V!16237)) (EmptyCell!5331) )
))
(declare-datatypes ((array!26509 0))(
  ( (array!26510 (arr!12701 (Array (_ BitVec 32) ValueCell!5331)) (size!13053 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26509)

(declare-fun e!256113 () Bool)

(declare-fun array_inv!9234 (array!26509) Bool)

(assert (=> start!39938 (and (array_inv!9234 _values!549) e!256113)))

(declare-fun array_inv!9235 (array!26507) Bool)

(assert (=> start!39938 (array_inv!9235 _keys!709)))

(declare-fun b!433113 () Bool)

(declare-fun e!256114 () Bool)

(declare-fun e!256106 () Bool)

(assert (=> b!433113 (= e!256114 e!256106)))

(declare-fun res!254970 () Bool)

(assert (=> b!433113 (=> (not res!254970) (not e!256106))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433113 (= res!254970 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16237)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7490 0))(
  ( (tuple2!7491 (_1!3755 (_ BitVec 64)) (_2!3755 V!16237)) )
))
(declare-datatypes ((List!7539 0))(
  ( (Nil!7536) (Cons!7535 (h!8391 tuple2!7490) (t!13193 List!7539)) )
))
(declare-datatypes ((ListLongMap!6417 0))(
  ( (ListLongMap!6418 (toList!3224 List!7539)) )
))
(declare-fun lt!198905 () ListLongMap!6417)

(declare-fun zeroValue!515 () V!16237)

(declare-fun lt!198898 () array!26509)

(declare-fun lt!198906 () array!26507)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1414 (array!26507 array!26509 (_ BitVec 32) (_ BitVec 32) V!16237 V!16237 (_ BitVec 32) Int) ListLongMap!6417)

(assert (=> b!433113 (= lt!198905 (getCurrentListMapNoExtraKeys!1414 lt!198906 lt!198898 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16237)

(assert (=> b!433113 (= lt!198898 (array!26510 (store (arr!12701 _values!549) i!563 (ValueCellFull!5331 v!412)) (size!13053 _values!549)))))

(declare-fun lt!198899 () ListLongMap!6417)

(assert (=> b!433113 (= lt!198899 (getCurrentListMapNoExtraKeys!1414 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433114 () Bool)

(declare-fun e!256105 () Bool)

(declare-fun mapRes!18645 () Bool)

(assert (=> b!433114 (= e!256113 (and e!256105 mapRes!18645))))

(declare-fun condMapEmpty!18645 () Bool)

(declare-fun mapDefault!18645 () ValueCell!5331)

(assert (=> b!433114 (= condMapEmpty!18645 (= (arr!12701 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5331)) mapDefault!18645)))))

(declare-fun b!433115 () Bool)

(declare-fun res!254962 () Bool)

(assert (=> b!433115 (=> (not res!254962) (not e!256107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26507 (_ BitVec 32)) Bool)

(assert (=> b!433115 (= res!254962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433116 () Bool)

(declare-fun res!254969 () Bool)

(assert (=> b!433116 (=> (not res!254969) (not e!256107))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433116 (= res!254969 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!433117 () Bool)

(declare-datatypes ((Unit!12775 0))(
  ( (Unit!12776) )
))
(declare-fun e!256111 () Unit!12775)

(declare-fun Unit!12777 () Unit!12775)

(assert (=> b!433117 (= e!256111 Unit!12777)))

(declare-fun lt!198911 () Unit!12775)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26507 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12775)

(assert (=> b!433117 (= lt!198911 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433117 false))

(declare-fun b!433118 () Bool)

(declare-fun res!254967 () Bool)

(assert (=> b!433118 (=> (not res!254967) (not e!256107))))

(declare-datatypes ((List!7540 0))(
  ( (Nil!7537) (Cons!7536 (h!8392 (_ BitVec 64)) (t!13194 List!7540)) )
))
(declare-fun arrayNoDuplicates!0 (array!26507 (_ BitVec 32) List!7540) Bool)

(assert (=> b!433118 (= res!254967 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7537))))

(declare-fun b!433119 () Bool)

(declare-fun res!254961 () Bool)

(assert (=> b!433119 (=> (not res!254961) (not e!256114))))

(assert (=> b!433119 (= res!254961 (arrayNoDuplicates!0 lt!198906 #b00000000000000000000000000000000 Nil!7537))))

(declare-fun mapIsEmpty!18645 () Bool)

(assert (=> mapIsEmpty!18645 mapRes!18645))

(declare-fun b!433120 () Bool)

(declare-fun e!256109 () Bool)

(declare-fun e!256112 () Bool)

(assert (=> b!433120 (= e!256109 e!256112)))

(declare-fun res!254957 () Bool)

(assert (=> b!433120 (=> res!254957 e!256112)))

(assert (=> b!433120 (= res!254957 (= k0!794 (select (arr!12700 _keys!709) from!863)))))

(assert (=> b!433120 (not (= (select (arr!12700 _keys!709) from!863) k0!794))))

(declare-fun lt!198901 () Unit!12775)

(assert (=> b!433120 (= lt!198901 e!256111)))

(declare-fun c!55556 () Bool)

(assert (=> b!433120 (= c!55556 (= (select (arr!12700 _keys!709) from!863) k0!794))))

(declare-fun lt!198907 () ListLongMap!6417)

(assert (=> b!433120 (= lt!198905 lt!198907)))

(declare-fun lt!198902 () ListLongMap!6417)

(declare-fun lt!198910 () tuple2!7490)

(declare-fun +!1370 (ListLongMap!6417 tuple2!7490) ListLongMap!6417)

(assert (=> b!433120 (= lt!198907 (+!1370 lt!198902 lt!198910))))

(declare-fun lt!198912 () V!16237)

(assert (=> b!433120 (= lt!198910 (tuple2!7491 (select (arr!12700 _keys!709) from!863) lt!198912))))

(declare-fun get!6323 (ValueCell!5331 V!16237) V!16237)

(declare-fun dynLambda!804 (Int (_ BitVec 64)) V!16237)

(assert (=> b!433120 (= lt!198912 (get!6323 (select (arr!12701 _values!549) from!863) (dynLambda!804 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433121 () Bool)

(assert (=> b!433121 (= e!256106 (not e!256109))))

(declare-fun res!254963 () Bool)

(assert (=> b!433121 (=> res!254963 e!256109)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433121 (= res!254963 (not (validKeyInArray!0 (select (arr!12700 _keys!709) from!863))))))

(declare-fun lt!198908 () ListLongMap!6417)

(assert (=> b!433121 (= lt!198908 lt!198902)))

(declare-fun lt!198909 () ListLongMap!6417)

(declare-fun lt!198904 () tuple2!7490)

(assert (=> b!433121 (= lt!198902 (+!1370 lt!198909 lt!198904))))

(assert (=> b!433121 (= lt!198908 (getCurrentListMapNoExtraKeys!1414 lt!198906 lt!198898 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433121 (= lt!198904 (tuple2!7491 k0!794 v!412))))

(assert (=> b!433121 (= lt!198909 (getCurrentListMapNoExtraKeys!1414 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198900 () Unit!12775)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!558 (array!26507 array!26509 (_ BitVec 32) (_ BitVec 32) V!16237 V!16237 (_ BitVec 32) (_ BitVec 64) V!16237 (_ BitVec 32) Int) Unit!12775)

(assert (=> b!433121 (= lt!198900 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!558 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433122 () Bool)

(declare-fun res!254966 () Bool)

(assert (=> b!433122 (=> (not res!254966) (not e!256107))))

(assert (=> b!433122 (= res!254966 (and (= (size!13053 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13052 _keys!709) (size!13053 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433123 () Bool)

(declare-fun Unit!12778 () Unit!12775)

(assert (=> b!433123 (= e!256111 Unit!12778)))

(declare-fun b!433124 () Bool)

(declare-fun res!254965 () Bool)

(assert (=> b!433124 (=> (not res!254965) (not e!256107))))

(assert (=> b!433124 (= res!254965 (or (= (select (arr!12700 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12700 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433125 () Bool)

(declare-fun res!254960 () Bool)

(assert (=> b!433125 (=> (not res!254960) (not e!256107))))

(assert (=> b!433125 (= res!254960 (validKeyInArray!0 k0!794))))

(declare-fun b!433126 () Bool)

(declare-fun e!256108 () Bool)

(assert (=> b!433126 (= e!256108 tp_is_empty!11349)))

(declare-fun b!433127 () Bool)

(assert (=> b!433127 (= e!256112 true)))

(assert (=> b!433127 (= lt!198907 (+!1370 (+!1370 lt!198909 lt!198910) lt!198904))))

(declare-fun lt!198903 () Unit!12775)

(declare-fun addCommutativeForDiffKeys!380 (ListLongMap!6417 (_ BitVec 64) V!16237 (_ BitVec 64) V!16237) Unit!12775)

(assert (=> b!433127 (= lt!198903 (addCommutativeForDiffKeys!380 lt!198909 k0!794 v!412 (select (arr!12700 _keys!709) from!863) lt!198912))))

(declare-fun b!433128 () Bool)

(declare-fun res!254968 () Bool)

(assert (=> b!433128 (=> (not res!254968) (not e!256107))))

(assert (=> b!433128 (= res!254968 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13052 _keys!709))))))

(declare-fun b!433129 () Bool)

(assert (=> b!433129 (= e!256107 e!256114)))

(declare-fun res!254958 () Bool)

(assert (=> b!433129 (=> (not res!254958) (not e!256114))))

(assert (=> b!433129 (= res!254958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198906 mask!1025))))

(assert (=> b!433129 (= lt!198906 (array!26508 (store (arr!12700 _keys!709) i!563 k0!794) (size!13052 _keys!709)))))

(declare-fun b!433130 () Bool)

(declare-fun res!254964 () Bool)

(assert (=> b!433130 (=> (not res!254964) (not e!256114))))

(assert (=> b!433130 (= res!254964 (bvsle from!863 i!563))))

(declare-fun b!433131 () Bool)

(assert (=> b!433131 (= e!256105 tp_is_empty!11349)))

(declare-fun b!433132 () Bool)

(declare-fun res!254956 () Bool)

(assert (=> b!433132 (=> (not res!254956) (not e!256107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433132 (= res!254956 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18645 () Bool)

(declare-fun tp!36120 () Bool)

(assert (=> mapNonEmpty!18645 (= mapRes!18645 (and tp!36120 e!256108))))

(declare-fun mapKey!18645 () (_ BitVec 32))

(declare-fun mapRest!18645 () (Array (_ BitVec 32) ValueCell!5331))

(declare-fun mapValue!18645 () ValueCell!5331)

(assert (=> mapNonEmpty!18645 (= (arr!12701 _values!549) (store mapRest!18645 mapKey!18645 mapValue!18645))))

(assert (= (and start!39938 res!254959) b!433132))

(assert (= (and b!433132 res!254956) b!433122))

(assert (= (and b!433122 res!254966) b!433115))

(assert (= (and b!433115 res!254962) b!433118))

(assert (= (and b!433118 res!254967) b!433128))

(assert (= (and b!433128 res!254968) b!433125))

(assert (= (and b!433125 res!254960) b!433124))

(assert (= (and b!433124 res!254965) b!433116))

(assert (= (and b!433116 res!254969) b!433129))

(assert (= (and b!433129 res!254958) b!433119))

(assert (= (and b!433119 res!254961) b!433130))

(assert (= (and b!433130 res!254964) b!433113))

(assert (= (and b!433113 res!254970) b!433121))

(assert (= (and b!433121 (not res!254963)) b!433120))

(assert (= (and b!433120 c!55556) b!433117))

(assert (= (and b!433120 (not c!55556)) b!433123))

(assert (= (and b!433120 (not res!254957)) b!433127))

(assert (= (and b!433114 condMapEmpty!18645) mapIsEmpty!18645))

(assert (= (and b!433114 (not condMapEmpty!18645)) mapNonEmpty!18645))

(get-info :version)

(assert (= (and mapNonEmpty!18645 ((_ is ValueCellFull!5331) mapValue!18645)) b!433126))

(assert (= (and b!433114 ((_ is ValueCellFull!5331) mapDefault!18645)) b!433131))

(assert (= start!39938 b!433114))

(declare-fun b_lambda!9315 () Bool)

(assert (=> (not b_lambda!9315) (not b!433120)))

(declare-fun t!13192 () Bool)

(declare-fun tb!3611 () Bool)

(assert (=> (and start!39938 (= defaultEntry!557 defaultEntry!557) t!13192) tb!3611))

(declare-fun result!6741 () Bool)

(assert (=> tb!3611 (= result!6741 tp_is_empty!11349)))

(assert (=> b!433120 t!13192))

(declare-fun b_and!18073 () Bool)

(assert (= b_and!18071 (and (=> t!13192 result!6741) b_and!18073)))

(declare-fun m!421175 () Bool)

(assert (=> start!39938 m!421175))

(declare-fun m!421177 () Bool)

(assert (=> start!39938 m!421177))

(declare-fun m!421179 () Bool)

(assert (=> b!433127 m!421179))

(assert (=> b!433127 m!421179))

(declare-fun m!421181 () Bool)

(assert (=> b!433127 m!421181))

(declare-fun m!421183 () Bool)

(assert (=> b!433127 m!421183))

(assert (=> b!433127 m!421183))

(declare-fun m!421185 () Bool)

(assert (=> b!433127 m!421185))

(declare-fun m!421187 () Bool)

(assert (=> b!433115 m!421187))

(declare-fun m!421189 () Bool)

(assert (=> b!433117 m!421189))

(assert (=> b!433120 m!421183))

(declare-fun m!421191 () Bool)

(assert (=> b!433120 m!421191))

(declare-fun m!421193 () Bool)

(assert (=> b!433120 m!421193))

(declare-fun m!421195 () Bool)

(assert (=> b!433120 m!421195))

(assert (=> b!433120 m!421195))

(assert (=> b!433120 m!421191))

(declare-fun m!421197 () Bool)

(assert (=> b!433120 m!421197))

(declare-fun m!421199 () Bool)

(assert (=> b!433129 m!421199))

(declare-fun m!421201 () Bool)

(assert (=> b!433129 m!421201))

(declare-fun m!421203 () Bool)

(assert (=> b!433125 m!421203))

(declare-fun m!421205 () Bool)

(assert (=> b!433116 m!421205))

(declare-fun m!421207 () Bool)

(assert (=> b!433119 m!421207))

(declare-fun m!421209 () Bool)

(assert (=> b!433132 m!421209))

(declare-fun m!421211 () Bool)

(assert (=> b!433113 m!421211))

(declare-fun m!421213 () Bool)

(assert (=> b!433113 m!421213))

(declare-fun m!421215 () Bool)

(assert (=> b!433113 m!421215))

(declare-fun m!421217 () Bool)

(assert (=> mapNonEmpty!18645 m!421217))

(declare-fun m!421219 () Bool)

(assert (=> b!433118 m!421219))

(declare-fun m!421221 () Bool)

(assert (=> b!433124 m!421221))

(assert (=> b!433121 m!421183))

(declare-fun m!421223 () Bool)

(assert (=> b!433121 m!421223))

(declare-fun m!421225 () Bool)

(assert (=> b!433121 m!421225))

(assert (=> b!433121 m!421183))

(declare-fun m!421227 () Bool)

(assert (=> b!433121 m!421227))

(declare-fun m!421229 () Bool)

(assert (=> b!433121 m!421229))

(declare-fun m!421231 () Bool)

(assert (=> b!433121 m!421231))

(check-sat (not b!433125) (not b!433117) (not b!433118) (not b!433119) tp_is_empty!11349 (not mapNonEmpty!18645) (not b_next!10197) (not b!433115) (not b!433120) (not b!433113) (not start!39938) b_and!18073 (not b!433121) (not b!433129) (not b!433116) (not b!433127) (not b_lambda!9315) (not b!433132))
(check-sat b_and!18073 (not b_next!10197))
