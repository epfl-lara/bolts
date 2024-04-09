; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41256 () Bool)

(assert start!41256)

(declare-fun b_free!11091 () Bool)

(declare-fun b_next!11091 () Bool)

(assert (=> start!41256 (= b_free!11091 (not b_next!11091))))

(declare-fun tp!39111 () Bool)

(declare-fun b_and!19429 () Bool)

(assert (=> start!41256 (= tp!39111 b_and!19429)))

(declare-fun b!461391 () Bool)

(declare-fun res!276102 () Bool)

(declare-fun e!269074 () Bool)

(assert (=> b!461391 (=> (not res!276102) (not e!269074))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!461391 (= res!276102 (bvsle from!863 i!563))))

(declare-fun b!461392 () Bool)

(declare-fun res!276096 () Bool)

(declare-fun e!269076 () Bool)

(assert (=> b!461392 (=> (not res!276096) (not e!269076))))

(declare-datatypes ((array!28621 0))(
  ( (array!28622 (arr!13747 (Array (_ BitVec 32) (_ BitVec 64))) (size!14099 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28621)

(assert (=> b!461392 (= res!276096 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14099 _keys!709))))))

(declare-fun b!461393 () Bool)

(declare-fun res!276101 () Bool)

(assert (=> b!461393 (=> (not res!276101) (not e!269076))))

(declare-datatypes ((List!8331 0))(
  ( (Nil!8328) (Cons!8327 (h!9183 (_ BitVec 64)) (t!14281 List!8331)) )
))
(declare-fun arrayNoDuplicates!0 (array!28621 (_ BitVec 32) List!8331) Bool)

(assert (=> b!461393 (= res!276101 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8328))))

(declare-fun b!461394 () Bool)

(declare-fun res!276092 () Bool)

(assert (=> b!461394 (=> (not res!276092) (not e!269076))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28621 (_ BitVec 32)) Bool)

(assert (=> b!461394 (= res!276092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!461395 () Bool)

(assert (=> b!461395 (= e!269076 e!269074)))

(declare-fun res!276091 () Bool)

(assert (=> b!461395 (=> (not res!276091) (not e!269074))))

(declare-fun lt!209000 () array!28621)

(assert (=> b!461395 (= res!276091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!209000 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!461395 (= lt!209000 (array!28622 (store (arr!13747 _keys!709) i!563 k0!794) (size!14099 _keys!709)))))

(declare-fun b!461396 () Bool)

(declare-fun res!276104 () Bool)

(assert (=> b!461396 (=> (not res!276104) (not e!269076))))

(assert (=> b!461396 (= res!276104 (or (= (select (arr!13747 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13747 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!276095 () Bool)

(assert (=> start!41256 (=> (not res!276095) (not e!269076))))

(assert (=> start!41256 (= res!276095 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14099 _keys!709))))))

(assert (=> start!41256 e!269076))

(declare-fun tp_is_empty!12429 () Bool)

(assert (=> start!41256 tp_is_empty!12429))

(assert (=> start!41256 tp!39111))

(assert (=> start!41256 true))

(declare-datatypes ((V!17677 0))(
  ( (V!17678 (val!6259 Int)) )
))
(declare-datatypes ((ValueCell!5871 0))(
  ( (ValueCellFull!5871 (v!8537 V!17677)) (EmptyCell!5871) )
))
(declare-datatypes ((array!28623 0))(
  ( (array!28624 (arr!13748 (Array (_ BitVec 32) ValueCell!5871)) (size!14100 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28623)

(declare-fun e!269079 () Bool)

(declare-fun array_inv!9930 (array!28623) Bool)

(assert (=> start!41256 (and (array_inv!9930 _values!549) e!269079)))

(declare-fun array_inv!9931 (array!28621) Bool)

(assert (=> start!41256 (array_inv!9931 _keys!709)))

(declare-fun e!269073 () Bool)

(declare-fun b!461397 () Bool)

(declare-datatypes ((tuple2!8228 0))(
  ( (tuple2!8229 (_1!4124 (_ BitVec 64)) (_2!4124 V!17677)) )
))
(declare-fun lt!209004 () tuple2!8228)

(declare-datatypes ((List!8332 0))(
  ( (Nil!8329) (Cons!8328 (h!9184 tuple2!8228) (t!14282 List!8332)) )
))
(declare-datatypes ((ListLongMap!7155 0))(
  ( (ListLongMap!7156 (toList!3593 List!8332)) )
))
(declare-fun lt!209002 () ListLongMap!7155)

(declare-fun lt!209003 () ListLongMap!7155)

(declare-fun +!1609 (ListLongMap!7155 tuple2!8228) ListLongMap!7155)

(assert (=> b!461397 (= e!269073 (= lt!209003 (+!1609 lt!209002 lt!209004)))))

(declare-fun b!461398 () Bool)

(declare-fun res!276093 () Bool)

(assert (=> b!461398 (=> (not res!276093) (not e!269076))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!461398 (= res!276093 (and (= (size!14100 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14099 _keys!709) (size!14100 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!461399 () Bool)

(declare-fun e!269072 () Bool)

(assert (=> b!461399 (= e!269072 tp_is_empty!12429)))

(declare-fun mapNonEmpty!20296 () Bool)

(declare-fun mapRes!20296 () Bool)

(declare-fun tp!39112 () Bool)

(declare-fun e!269075 () Bool)

(assert (=> mapNonEmpty!20296 (= mapRes!20296 (and tp!39112 e!269075))))

(declare-fun mapValue!20296 () ValueCell!5871)

(declare-fun mapRest!20296 () (Array (_ BitVec 32) ValueCell!5871))

(declare-fun mapKey!20296 () (_ BitVec 32))

(assert (=> mapNonEmpty!20296 (= (arr!13748 _values!549) (store mapRest!20296 mapKey!20296 mapValue!20296))))

(declare-fun b!461400 () Bool)

(declare-fun e!269078 () Bool)

(assert (=> b!461400 (= e!269078 (not e!269073))))

(declare-fun res!276099 () Bool)

(assert (=> b!461400 (=> res!276099 e!269073)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461400 (= res!276099 (validKeyInArray!0 (select (arr!13747 _keys!709) from!863)))))

(declare-fun minValue!515 () V!17677)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!209005 () array!28623)

(declare-fun zeroValue!515 () V!17677)

(declare-fun getCurrentListMapNoExtraKeys!1761 (array!28621 array!28623 (_ BitVec 32) (_ BitVec 32) V!17677 V!17677 (_ BitVec 32) Int) ListLongMap!7155)

(assert (=> b!461400 (= (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1609 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!209004))))

(declare-fun v!412 () V!17677)

(assert (=> b!461400 (= lt!209004 (tuple2!8229 k0!794 v!412))))

(declare-datatypes ((Unit!13381 0))(
  ( (Unit!13382) )
))
(declare-fun lt!209001 () Unit!13381)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!761 (array!28621 array!28623 (_ BitVec 32) (_ BitVec 32) V!17677 V!17677 (_ BitVec 32) (_ BitVec 64) V!17677 (_ BitVec 32) Int) Unit!13381)

(assert (=> b!461400 (= lt!209001 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!461401 () Bool)

(declare-fun res!276094 () Bool)

(assert (=> b!461401 (=> (not res!276094) (not e!269074))))

(assert (=> b!461401 (= res!276094 (arrayNoDuplicates!0 lt!209000 #b00000000000000000000000000000000 Nil!8328))))

(declare-fun b!461402 () Bool)

(assert (=> b!461402 (= e!269074 e!269078)))

(declare-fun res!276100 () Bool)

(assert (=> b!461402 (=> (not res!276100) (not e!269078))))

(assert (=> b!461402 (= res!276100 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!461402 (= lt!209003 (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!461402 (= lt!209005 (array!28624 (store (arr!13748 _values!549) i!563 (ValueCellFull!5871 v!412)) (size!14100 _values!549)))))

(assert (=> b!461402 (= lt!209002 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!461403 () Bool)

(declare-fun res!276103 () Bool)

(assert (=> b!461403 (=> (not res!276103) (not e!269076))))

(declare-fun arrayContainsKey!0 (array!28621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461403 (= res!276103 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!461404 () Bool)

(declare-fun res!276098 () Bool)

(assert (=> b!461404 (=> (not res!276098) (not e!269076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!461404 (= res!276098 (validMask!0 mask!1025))))

(declare-fun b!461405 () Bool)

(declare-fun res!276097 () Bool)

(assert (=> b!461405 (=> (not res!276097) (not e!269076))))

(assert (=> b!461405 (= res!276097 (validKeyInArray!0 k0!794))))

(declare-fun b!461406 () Bool)

(assert (=> b!461406 (= e!269075 tp_is_empty!12429)))

(declare-fun mapIsEmpty!20296 () Bool)

(assert (=> mapIsEmpty!20296 mapRes!20296))

(declare-fun b!461407 () Bool)

(assert (=> b!461407 (= e!269079 (and e!269072 mapRes!20296))))

(declare-fun condMapEmpty!20296 () Bool)

(declare-fun mapDefault!20296 () ValueCell!5871)

(assert (=> b!461407 (= condMapEmpty!20296 (= (arr!13748 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5871)) mapDefault!20296)))))

(assert (= (and start!41256 res!276095) b!461404))

(assert (= (and b!461404 res!276098) b!461398))

(assert (= (and b!461398 res!276093) b!461394))

(assert (= (and b!461394 res!276092) b!461393))

(assert (= (and b!461393 res!276101) b!461392))

(assert (= (and b!461392 res!276096) b!461405))

(assert (= (and b!461405 res!276097) b!461396))

(assert (= (and b!461396 res!276104) b!461403))

(assert (= (and b!461403 res!276103) b!461395))

(assert (= (and b!461395 res!276091) b!461401))

(assert (= (and b!461401 res!276094) b!461391))

(assert (= (and b!461391 res!276102) b!461402))

(assert (= (and b!461402 res!276100) b!461400))

(assert (= (and b!461400 (not res!276099)) b!461397))

(assert (= (and b!461407 condMapEmpty!20296) mapIsEmpty!20296))

(assert (= (and b!461407 (not condMapEmpty!20296)) mapNonEmpty!20296))

(get-info :version)

(assert (= (and mapNonEmpty!20296 ((_ is ValueCellFull!5871) mapValue!20296)) b!461406))

(assert (= (and b!461407 ((_ is ValueCellFull!5871) mapDefault!20296)) b!461399))

(assert (= start!41256 b!461407))

(declare-fun m!444553 () Bool)

(assert (=> b!461393 m!444553))

(declare-fun m!444555 () Bool)

(assert (=> b!461400 m!444555))

(declare-fun m!444557 () Bool)

(assert (=> b!461400 m!444557))

(declare-fun m!444559 () Bool)

(assert (=> b!461400 m!444559))

(assert (=> b!461400 m!444559))

(declare-fun m!444561 () Bool)

(assert (=> b!461400 m!444561))

(assert (=> b!461400 m!444555))

(declare-fun m!444563 () Bool)

(assert (=> b!461400 m!444563))

(declare-fun m!444565 () Bool)

(assert (=> b!461400 m!444565))

(declare-fun m!444567 () Bool)

(assert (=> mapNonEmpty!20296 m!444567))

(declare-fun m!444569 () Bool)

(assert (=> b!461402 m!444569))

(declare-fun m!444571 () Bool)

(assert (=> b!461402 m!444571))

(declare-fun m!444573 () Bool)

(assert (=> b!461402 m!444573))

(declare-fun m!444575 () Bool)

(assert (=> b!461394 m!444575))

(declare-fun m!444577 () Bool)

(assert (=> b!461401 m!444577))

(declare-fun m!444579 () Bool)

(assert (=> b!461396 m!444579))

(declare-fun m!444581 () Bool)

(assert (=> b!461405 m!444581))

(declare-fun m!444583 () Bool)

(assert (=> b!461403 m!444583))

(declare-fun m!444585 () Bool)

(assert (=> start!41256 m!444585))

(declare-fun m!444587 () Bool)

(assert (=> start!41256 m!444587))

(declare-fun m!444589 () Bool)

(assert (=> b!461397 m!444589))

(declare-fun m!444591 () Bool)

(assert (=> b!461404 m!444591))

(declare-fun m!444593 () Bool)

(assert (=> b!461395 m!444593))

(declare-fun m!444595 () Bool)

(assert (=> b!461395 m!444595))

(check-sat tp_is_empty!12429 (not mapNonEmpty!20296) (not b!461402) (not b!461397) (not b!461395) (not b!461400) (not b!461401) (not b!461404) (not b!461403) (not b!461393) (not b!461405) b_and!19429 (not b!461394) (not b_next!11091) (not start!41256))
(check-sat b_and!19429 (not b_next!11091))
(get-model)

(declare-fun b!461483 () Bool)

(declare-fun e!269121 () Bool)

(declare-fun lt!209039 () ListLongMap!7155)

(declare-fun isEmpty!570 (ListLongMap!7155) Bool)

(assert (=> b!461483 (= e!269121 (isEmpty!570 lt!209039))))

(declare-fun b!461484 () Bool)

(declare-fun lt!209038 () Unit!13381)

(declare-fun lt!209042 () Unit!13381)

(assert (=> b!461484 (= lt!209038 lt!209042)))

(declare-fun lt!209044 () (_ BitVec 64))

(declare-fun lt!209040 () (_ BitVec 64))

(declare-fun lt!209041 () ListLongMap!7155)

(declare-fun lt!209043 () V!17677)

(declare-fun contains!2514 (ListLongMap!7155 (_ BitVec 64)) Bool)

(assert (=> b!461484 (not (contains!2514 (+!1609 lt!209041 (tuple2!8229 lt!209040 lt!209043)) lt!209044))))

(declare-fun addStillNotContains!153 (ListLongMap!7155 (_ BitVec 64) V!17677 (_ BitVec 64)) Unit!13381)

(assert (=> b!461484 (= lt!209042 (addStillNotContains!153 lt!209041 lt!209040 lt!209043 lt!209044))))

(assert (=> b!461484 (= lt!209044 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!6802 (ValueCell!5871 V!17677) V!17677)

(declare-fun dynLambda!910 (Int (_ BitVec 64)) V!17677)

(assert (=> b!461484 (= lt!209043 (get!6802 (select (arr!13748 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!461484 (= lt!209040 (select (arr!13747 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30171 () ListLongMap!7155)

(assert (=> b!461484 (= lt!209041 call!30171)))

(declare-fun e!269122 () ListLongMap!7155)

(assert (=> b!461484 (= e!269122 (+!1609 call!30171 (tuple2!8229 (select (arr!13747 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (get!6802 (select (arr!13748 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!461485 () Bool)

(assert (=> b!461485 (= e!269122 call!30171)))

(declare-fun b!461486 () Bool)

(assert (=> b!461486 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 _keys!709)))))

(assert (=> b!461486 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14100 _values!549)))))

(declare-fun e!269118 () Bool)

(declare-fun apply!318 (ListLongMap!7155 (_ BitVec 64)) V!17677)

(assert (=> b!461486 (= e!269118 (= (apply!318 lt!209039 (select (arr!13747 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))) (get!6802 (select (arr!13748 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!461488 () Bool)

(declare-fun e!269123 () Bool)

(declare-fun e!269119 () Bool)

(assert (=> b!461488 (= e!269123 e!269119)))

(declare-fun c!56515 () Bool)

(declare-fun e!269120 () Bool)

(assert (=> b!461488 (= c!56515 e!269120)))

(declare-fun res!276158 () Bool)

(assert (=> b!461488 (=> (not res!276158) (not e!269120))))

(assert (=> b!461488 (= res!276158 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 _keys!709)))))

(declare-fun b!461489 () Bool)

(declare-fun e!269124 () ListLongMap!7155)

(assert (=> b!461489 (= e!269124 e!269122)))

(declare-fun c!56517 () Bool)

(assert (=> b!461489 (= c!56517 (validKeyInArray!0 (select (arr!13747 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!461490 () Bool)

(assert (=> b!461490 (= e!269124 (ListLongMap!7156 Nil!8329))))

(declare-fun b!461491 () Bool)

(assert (=> b!461491 (= e!269121 (= lt!209039 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!461492 () Bool)

(assert (=> b!461492 (= e!269120 (validKeyInArray!0 (select (arr!13747 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!461492 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!461493 () Bool)

(declare-fun res!276155 () Bool)

(assert (=> b!461493 (=> (not res!276155) (not e!269123))))

(assert (=> b!461493 (= res!276155 (not (contains!2514 lt!209039 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461494 () Bool)

(assert (=> b!461494 (= e!269119 e!269121)))

(declare-fun c!56516 () Bool)

(assert (=> b!461494 (= c!56516 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 _keys!709)))))

(declare-fun bm!30168 () Bool)

(assert (=> bm!30168 (= call!30171 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun d!74737 () Bool)

(assert (=> d!74737 e!269123))

(declare-fun res!276156 () Bool)

(assert (=> d!74737 (=> (not res!276156) (not e!269123))))

(assert (=> d!74737 (= res!276156 (not (contains!2514 lt!209039 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74737 (= lt!209039 e!269124)))

(declare-fun c!56518 () Bool)

(assert (=> d!74737 (= c!56518 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14099 _keys!709)))))

(assert (=> d!74737 (validMask!0 mask!1025)))

(assert (=> d!74737 (= (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!209039)))

(declare-fun b!461487 () Bool)

(assert (=> b!461487 (= e!269119 e!269118)))

(assert (=> b!461487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 _keys!709)))))

(declare-fun res!276157 () Bool)

(assert (=> b!461487 (= res!276157 (contains!2514 lt!209039 (select (arr!13747 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!461487 (=> (not res!276157) (not e!269118))))

(assert (= (and d!74737 c!56518) b!461490))

(assert (= (and d!74737 (not c!56518)) b!461489))

(assert (= (and b!461489 c!56517) b!461484))

(assert (= (and b!461489 (not c!56517)) b!461485))

(assert (= (or b!461484 b!461485) bm!30168))

(assert (= (and d!74737 res!276156) b!461493))

(assert (= (and b!461493 res!276155) b!461488))

(assert (= (and b!461488 res!276158) b!461492))

(assert (= (and b!461488 c!56515) b!461487))

(assert (= (and b!461488 (not c!56515)) b!461494))

(assert (= (and b!461487 res!276157) b!461486))

(assert (= (and b!461494 c!56516) b!461491))

(assert (= (and b!461494 (not c!56516)) b!461483))

(declare-fun b_lambda!9963 () Bool)

(assert (=> (not b_lambda!9963) (not b!461484)))

(declare-fun t!14286 () Bool)

(declare-fun tb!3909 () Bool)

(assert (=> (and start!41256 (= defaultEntry!557 defaultEntry!557) t!14286) tb!3909))

(declare-fun result!7357 () Bool)

(assert (=> tb!3909 (= result!7357 tp_is_empty!12429)))

(assert (=> b!461484 t!14286))

(declare-fun b_and!19433 () Bool)

(assert (= b_and!19429 (and (=> t!14286 result!7357) b_and!19433)))

(declare-fun b_lambda!9965 () Bool)

(assert (=> (not b_lambda!9965) (not b!461486)))

(assert (=> b!461486 t!14286))

(declare-fun b_and!19435 () Bool)

(assert (= b_and!19433 (and (=> t!14286 result!7357) b_and!19435)))

(declare-fun m!444641 () Bool)

(assert (=> b!461487 m!444641))

(assert (=> b!461487 m!444641))

(declare-fun m!444643 () Bool)

(assert (=> b!461487 m!444643))

(declare-fun m!444645 () Bool)

(assert (=> b!461493 m!444645))

(assert (=> b!461484 m!444641))

(declare-fun m!444647 () Bool)

(assert (=> b!461484 m!444647))

(declare-fun m!444649 () Bool)

(assert (=> b!461484 m!444649))

(declare-fun m!444651 () Bool)

(assert (=> b!461484 m!444651))

(declare-fun m!444653 () Bool)

(assert (=> b!461484 m!444653))

(assert (=> b!461484 m!444651))

(declare-fun m!444655 () Bool)

(assert (=> b!461484 m!444655))

(declare-fun m!444657 () Bool)

(assert (=> b!461484 m!444657))

(declare-fun m!444659 () Bool)

(assert (=> b!461484 m!444659))

(assert (=> b!461484 m!444655))

(assert (=> b!461484 m!444657))

(assert (=> b!461486 m!444641))

(assert (=> b!461486 m!444641))

(declare-fun m!444661 () Bool)

(assert (=> b!461486 m!444661))

(assert (=> b!461486 m!444655))

(assert (=> b!461486 m!444657))

(assert (=> b!461486 m!444659))

(assert (=> b!461486 m!444655))

(assert (=> b!461486 m!444657))

(declare-fun m!444663 () Bool)

(assert (=> b!461483 m!444663))

(declare-fun m!444665 () Bool)

(assert (=> bm!30168 m!444665))

(declare-fun m!444667 () Bool)

(assert (=> d!74737 m!444667))

(assert (=> d!74737 m!444591))

(assert (=> b!461491 m!444665))

(assert (=> b!461492 m!444641))

(assert (=> b!461492 m!444641))

(declare-fun m!444669 () Bool)

(assert (=> b!461492 m!444669))

(assert (=> b!461489 m!444641))

(assert (=> b!461489 m!444641))

(assert (=> b!461489 m!444669))

(assert (=> b!461400 d!74737))

(declare-fun b!461497 () Bool)

(declare-fun e!269128 () Bool)

(declare-fun lt!209046 () ListLongMap!7155)

(assert (=> b!461497 (= e!269128 (isEmpty!570 lt!209046))))

(declare-fun b!461498 () Bool)

(declare-fun lt!209045 () Unit!13381)

(declare-fun lt!209049 () Unit!13381)

(assert (=> b!461498 (= lt!209045 lt!209049)))

(declare-fun lt!209050 () V!17677)

(declare-fun lt!209048 () ListLongMap!7155)

(declare-fun lt!209047 () (_ BitVec 64))

(declare-fun lt!209051 () (_ BitVec 64))

(assert (=> b!461498 (not (contains!2514 (+!1609 lt!209048 (tuple2!8229 lt!209047 lt!209050)) lt!209051))))

(assert (=> b!461498 (= lt!209049 (addStillNotContains!153 lt!209048 lt!209047 lt!209050 lt!209051))))

(assert (=> b!461498 (= lt!209051 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!461498 (= lt!209050 (get!6802 (select (arr!13748 lt!209005) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!461498 (= lt!209047 (select (arr!13747 lt!209000) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30172 () ListLongMap!7155)

(assert (=> b!461498 (= lt!209048 call!30172)))

(declare-fun e!269129 () ListLongMap!7155)

(assert (=> b!461498 (= e!269129 (+!1609 call!30172 (tuple2!8229 (select (arr!13747 lt!209000) (bvadd #b00000000000000000000000000000001 from!863)) (get!6802 (select (arr!13748 lt!209005) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!461499 () Bool)

(assert (=> b!461499 (= e!269129 call!30172)))

(declare-fun b!461500 () Bool)

(assert (=> b!461500 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 lt!209000)))))

(assert (=> b!461500 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14100 lt!209005)))))

(declare-fun e!269125 () Bool)

(assert (=> b!461500 (= e!269125 (= (apply!318 lt!209046 (select (arr!13747 lt!209000) (bvadd #b00000000000000000000000000000001 from!863))) (get!6802 (select (arr!13748 lt!209005) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!461502 () Bool)

(declare-fun e!269130 () Bool)

(declare-fun e!269126 () Bool)

(assert (=> b!461502 (= e!269130 e!269126)))

(declare-fun c!56519 () Bool)

(declare-fun e!269127 () Bool)

(assert (=> b!461502 (= c!56519 e!269127)))

(declare-fun res!276162 () Bool)

(assert (=> b!461502 (=> (not res!276162) (not e!269127))))

(assert (=> b!461502 (= res!276162 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 lt!209000)))))

(declare-fun b!461503 () Bool)

(declare-fun e!269131 () ListLongMap!7155)

(assert (=> b!461503 (= e!269131 e!269129)))

(declare-fun c!56521 () Bool)

(assert (=> b!461503 (= c!56521 (validKeyInArray!0 (select (arr!13747 lt!209000) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!461504 () Bool)

(assert (=> b!461504 (= e!269131 (ListLongMap!7156 Nil!8329))))

(declare-fun b!461505 () Bool)

(assert (=> b!461505 (= e!269128 (= lt!209046 (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!461506 () Bool)

(assert (=> b!461506 (= e!269127 (validKeyInArray!0 (select (arr!13747 lt!209000) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!461506 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!461507 () Bool)

(declare-fun res!276159 () Bool)

(assert (=> b!461507 (=> (not res!276159) (not e!269130))))

(assert (=> b!461507 (= res!276159 (not (contains!2514 lt!209046 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461508 () Bool)

(assert (=> b!461508 (= e!269126 e!269128)))

(declare-fun c!56520 () Bool)

(assert (=> b!461508 (= c!56520 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 lt!209000)))))

(declare-fun bm!30169 () Bool)

(assert (=> bm!30169 (= call!30172 (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun d!74739 () Bool)

(assert (=> d!74739 e!269130))

(declare-fun res!276160 () Bool)

(assert (=> d!74739 (=> (not res!276160) (not e!269130))))

(assert (=> d!74739 (= res!276160 (not (contains!2514 lt!209046 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74739 (= lt!209046 e!269131)))

(declare-fun c!56522 () Bool)

(assert (=> d!74739 (= c!56522 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14099 lt!209000)))))

(assert (=> d!74739 (validMask!0 mask!1025)))

(assert (=> d!74739 (= (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!209046)))

(declare-fun b!461501 () Bool)

(assert (=> b!461501 (= e!269126 e!269125)))

(assert (=> b!461501 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14099 lt!209000)))))

(declare-fun res!276161 () Bool)

(assert (=> b!461501 (= res!276161 (contains!2514 lt!209046 (select (arr!13747 lt!209000) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!461501 (=> (not res!276161) (not e!269125))))

(assert (= (and d!74739 c!56522) b!461504))

(assert (= (and d!74739 (not c!56522)) b!461503))

(assert (= (and b!461503 c!56521) b!461498))

(assert (= (and b!461503 (not c!56521)) b!461499))

(assert (= (or b!461498 b!461499) bm!30169))

(assert (= (and d!74739 res!276160) b!461507))

(assert (= (and b!461507 res!276159) b!461502))

(assert (= (and b!461502 res!276162) b!461506))

(assert (= (and b!461502 c!56519) b!461501))

(assert (= (and b!461502 (not c!56519)) b!461508))

(assert (= (and b!461501 res!276161) b!461500))

(assert (= (and b!461508 c!56520) b!461505))

(assert (= (and b!461508 (not c!56520)) b!461497))

(declare-fun b_lambda!9967 () Bool)

(assert (=> (not b_lambda!9967) (not b!461498)))

(assert (=> b!461498 t!14286))

(declare-fun b_and!19437 () Bool)

(assert (= b_and!19435 (and (=> t!14286 result!7357) b_and!19437)))

(declare-fun b_lambda!9969 () Bool)

(assert (=> (not b_lambda!9969) (not b!461500)))

(assert (=> b!461500 t!14286))

(declare-fun b_and!19439 () Bool)

(assert (= b_and!19437 (and (=> t!14286 result!7357) b_and!19439)))

(declare-fun m!444671 () Bool)

(assert (=> b!461501 m!444671))

(assert (=> b!461501 m!444671))

(declare-fun m!444673 () Bool)

(assert (=> b!461501 m!444673))

(declare-fun m!444675 () Bool)

(assert (=> b!461507 m!444675))

(assert (=> b!461498 m!444671))

(declare-fun m!444677 () Bool)

(assert (=> b!461498 m!444677))

(declare-fun m!444679 () Bool)

(assert (=> b!461498 m!444679))

(declare-fun m!444681 () Bool)

(assert (=> b!461498 m!444681))

(declare-fun m!444683 () Bool)

(assert (=> b!461498 m!444683))

(assert (=> b!461498 m!444681))

(declare-fun m!444685 () Bool)

(assert (=> b!461498 m!444685))

(assert (=> b!461498 m!444657))

(declare-fun m!444687 () Bool)

(assert (=> b!461498 m!444687))

(assert (=> b!461498 m!444685))

(assert (=> b!461498 m!444657))

(assert (=> b!461500 m!444671))

(assert (=> b!461500 m!444671))

(declare-fun m!444689 () Bool)

(assert (=> b!461500 m!444689))

(assert (=> b!461500 m!444685))

(assert (=> b!461500 m!444657))

(assert (=> b!461500 m!444687))

(assert (=> b!461500 m!444685))

(assert (=> b!461500 m!444657))

(declare-fun m!444691 () Bool)

(assert (=> b!461497 m!444691))

(declare-fun m!444693 () Bool)

(assert (=> bm!30169 m!444693))

(declare-fun m!444695 () Bool)

(assert (=> d!74739 m!444695))

(assert (=> d!74739 m!444591))

(assert (=> b!461505 m!444693))

(assert (=> b!461506 m!444671))

(assert (=> b!461506 m!444671))

(declare-fun m!444697 () Bool)

(assert (=> b!461506 m!444697))

(assert (=> b!461503 m!444671))

(assert (=> b!461503 m!444671))

(assert (=> b!461503 m!444697))

(assert (=> b!461400 d!74739))

(declare-fun d!74741 () Bool)

(assert (=> d!74741 (= (validKeyInArray!0 (select (arr!13747 _keys!709) from!863)) (and (not (= (select (arr!13747 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13747 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!461400 d!74741))

(declare-fun d!74743 () Bool)

(declare-fun e!269134 () Bool)

(assert (=> d!74743 e!269134))

(declare-fun res!276168 () Bool)

(assert (=> d!74743 (=> (not res!276168) (not e!269134))))

(declare-fun lt!209063 () ListLongMap!7155)

(assert (=> d!74743 (= res!276168 (contains!2514 lt!209063 (_1!4124 lt!209004)))))

(declare-fun lt!209060 () List!8332)

(assert (=> d!74743 (= lt!209063 (ListLongMap!7156 lt!209060))))

(declare-fun lt!209062 () Unit!13381)

(declare-fun lt!209061 () Unit!13381)

(assert (=> d!74743 (= lt!209062 lt!209061)))

(declare-datatypes ((Option!380 0))(
  ( (Some!379 (v!8542 V!17677)) (None!378) )
))
(declare-fun getValueByKey!374 (List!8332 (_ BitVec 64)) Option!380)

(assert (=> d!74743 (= (getValueByKey!374 lt!209060 (_1!4124 lt!209004)) (Some!379 (_2!4124 lt!209004)))))

(declare-fun lemmaContainsTupThenGetReturnValue!198 (List!8332 (_ BitVec 64) V!17677) Unit!13381)

(assert (=> d!74743 (= lt!209061 (lemmaContainsTupThenGetReturnValue!198 lt!209060 (_1!4124 lt!209004) (_2!4124 lt!209004)))))

(declare-fun insertStrictlySorted!200 (List!8332 (_ BitVec 64) V!17677) List!8332)

(assert (=> d!74743 (= lt!209060 (insertStrictlySorted!200 (toList!3593 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557)) (_1!4124 lt!209004) (_2!4124 lt!209004)))))

(assert (=> d!74743 (= (+!1609 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!209004) lt!209063)))

(declare-fun b!461513 () Bool)

(declare-fun res!276167 () Bool)

(assert (=> b!461513 (=> (not res!276167) (not e!269134))))

(assert (=> b!461513 (= res!276167 (= (getValueByKey!374 (toList!3593 lt!209063) (_1!4124 lt!209004)) (Some!379 (_2!4124 lt!209004))))))

(declare-fun b!461514 () Bool)

(declare-fun contains!2515 (List!8332 tuple2!8228) Bool)

(assert (=> b!461514 (= e!269134 (contains!2515 (toList!3593 lt!209063) lt!209004))))

(assert (= (and d!74743 res!276168) b!461513))

(assert (= (and b!461513 res!276167) b!461514))

(declare-fun m!444699 () Bool)

(assert (=> d!74743 m!444699))

(declare-fun m!444701 () Bool)

(assert (=> d!74743 m!444701))

(declare-fun m!444703 () Bool)

(assert (=> d!74743 m!444703))

(declare-fun m!444705 () Bool)

(assert (=> d!74743 m!444705))

(declare-fun m!444707 () Bool)

(assert (=> b!461513 m!444707))

(declare-fun m!444709 () Bool)

(assert (=> b!461514 m!444709))

(assert (=> b!461400 d!74743))

(declare-fun call!30178 () ListLongMap!7155)

(declare-fun bm!30174 () Bool)

(assert (=> bm!30174 (= call!30178 (getCurrentListMapNoExtraKeys!1761 (array!28622 (store (arr!13747 _keys!709) i!563 k0!794) (size!14099 _keys!709)) (array!28624 (store (arr!13748 _values!549) i!563 (ValueCellFull!5871 v!412)) (size!14100 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!461521 () Bool)

(declare-fun e!269140 () Bool)

(declare-fun call!30177 () ListLongMap!7155)

(assert (=> b!461521 (= e!269140 (= call!30178 call!30177))))

(declare-fun b!461522 () Bool)

(declare-fun e!269139 () Bool)

(assert (=> b!461522 (= e!269139 e!269140)))

(declare-fun c!56525 () Bool)

(assert (=> b!461522 (= c!56525 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun b!461523 () Bool)

(assert (=> b!461523 (= e!269140 (= call!30178 (+!1609 call!30177 (tuple2!8229 k0!794 v!412))))))

(declare-fun d!74745 () Bool)

(assert (=> d!74745 e!269139))

(declare-fun res!276171 () Bool)

(assert (=> d!74745 (=> (not res!276171) (not e!269139))))

(assert (=> d!74745 (= res!276171 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14099 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14100 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14099 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14100 _values!549))))))))

(declare-fun lt!209066 () Unit!13381)

(declare-fun choose!1344 (array!28621 array!28623 (_ BitVec 32) (_ BitVec 32) V!17677 V!17677 (_ BitVec 32) (_ BitVec 64) V!17677 (_ BitVec 32) Int) Unit!13381)

(assert (=> d!74745 (= lt!209066 (choose!1344 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74745 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!14099 _keys!709)))))

(assert (=> d!74745 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!209066)))

(declare-fun bm!30175 () Bool)

(assert (=> bm!30175 (= call!30177 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and d!74745 res!276171) b!461522))

(assert (= (and b!461522 c!56525) b!461523))

(assert (= (and b!461522 (not c!56525)) b!461521))

(assert (= (or b!461523 b!461521) bm!30175))

(assert (= (or b!461523 b!461521) bm!30174))

(assert (=> bm!30174 m!444595))

(assert (=> bm!30174 m!444571))

(declare-fun m!444711 () Bool)

(assert (=> bm!30174 m!444711))

(declare-fun m!444713 () Bool)

(assert (=> b!461523 m!444713))

(declare-fun m!444715 () Bool)

(assert (=> d!74745 m!444715))

(assert (=> bm!30175 m!444559))

(assert (=> b!461400 d!74745))

(declare-fun b!461534 () Bool)

(declare-fun e!269151 () Bool)

(declare-fun e!269149 () Bool)

(assert (=> b!461534 (= e!269151 e!269149)))

(declare-fun res!276180 () Bool)

(assert (=> b!461534 (=> (not res!276180) (not e!269149))))

(declare-fun e!269150 () Bool)

(assert (=> b!461534 (= res!276180 (not e!269150))))

(declare-fun res!276179 () Bool)

(assert (=> b!461534 (=> (not res!276179) (not e!269150))))

(assert (=> b!461534 (= res!276179 (validKeyInArray!0 (select (arr!13747 lt!209000) #b00000000000000000000000000000000)))))

(declare-fun b!461535 () Bool)

(declare-fun e!269152 () Bool)

(declare-fun call!30181 () Bool)

(assert (=> b!461535 (= e!269152 call!30181)))

(declare-fun b!461536 () Bool)

(declare-fun contains!2516 (List!8331 (_ BitVec 64)) Bool)

(assert (=> b!461536 (= e!269150 (contains!2516 Nil!8328 (select (arr!13747 lt!209000) #b00000000000000000000000000000000)))))

(declare-fun bm!30178 () Bool)

(declare-fun c!56528 () Bool)

(assert (=> bm!30178 (= call!30181 (arrayNoDuplicates!0 lt!209000 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56528 (Cons!8327 (select (arr!13747 lt!209000) #b00000000000000000000000000000000) Nil!8328) Nil!8328)))))

(declare-fun b!461537 () Bool)

(assert (=> b!461537 (= e!269149 e!269152)))

(assert (=> b!461537 (= c!56528 (validKeyInArray!0 (select (arr!13747 lt!209000) #b00000000000000000000000000000000)))))

(declare-fun d!74747 () Bool)

(declare-fun res!276178 () Bool)

(assert (=> d!74747 (=> res!276178 e!269151)))

(assert (=> d!74747 (= res!276178 (bvsge #b00000000000000000000000000000000 (size!14099 lt!209000)))))

(assert (=> d!74747 (= (arrayNoDuplicates!0 lt!209000 #b00000000000000000000000000000000 Nil!8328) e!269151)))

(declare-fun b!461538 () Bool)

(assert (=> b!461538 (= e!269152 call!30181)))

(assert (= (and d!74747 (not res!276178)) b!461534))

(assert (= (and b!461534 res!276179) b!461536))

(assert (= (and b!461534 res!276180) b!461537))

(assert (= (and b!461537 c!56528) b!461538))

(assert (= (and b!461537 (not c!56528)) b!461535))

(assert (= (or b!461538 b!461535) bm!30178))

(declare-fun m!444717 () Bool)

(assert (=> b!461534 m!444717))

(assert (=> b!461534 m!444717))

(declare-fun m!444719 () Bool)

(assert (=> b!461534 m!444719))

(assert (=> b!461536 m!444717))

(assert (=> b!461536 m!444717))

(declare-fun m!444721 () Bool)

(assert (=> b!461536 m!444721))

(assert (=> bm!30178 m!444717))

(declare-fun m!444723 () Bool)

(assert (=> bm!30178 m!444723))

(assert (=> b!461537 m!444717))

(assert (=> b!461537 m!444717))

(assert (=> b!461537 m!444719))

(assert (=> b!461401 d!74747))

(declare-fun d!74749 () Bool)

(assert (=> d!74749 (= (array_inv!9930 _values!549) (bvsge (size!14100 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!41256 d!74749))

(declare-fun d!74751 () Bool)

(assert (=> d!74751 (= (array_inv!9931 _keys!709) (bvsge (size!14099 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!41256 d!74751))

(declare-fun d!74753 () Bool)

(assert (=> d!74753 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!461404 d!74753))

(declare-fun d!74755 () Bool)

(assert (=> d!74755 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!461405 d!74755))

(declare-fun b!461547 () Bool)

(declare-fun e!269160 () Bool)

(declare-fun call!30184 () Bool)

(assert (=> b!461547 (= e!269160 call!30184)))

(declare-fun bm!30181 () Bool)

(assert (=> bm!30181 (= call!30184 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!209000 mask!1025))))

(declare-fun b!461548 () Bool)

(declare-fun e!269161 () Bool)

(assert (=> b!461548 (= e!269161 call!30184)))

(declare-fun d!74757 () Bool)

(declare-fun res!276185 () Bool)

(declare-fun e!269159 () Bool)

(assert (=> d!74757 (=> res!276185 e!269159)))

(assert (=> d!74757 (= res!276185 (bvsge #b00000000000000000000000000000000 (size!14099 lt!209000)))))

(assert (=> d!74757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!209000 mask!1025) e!269159)))

(declare-fun b!461549 () Bool)

(assert (=> b!461549 (= e!269160 e!269161)))

(declare-fun lt!209073 () (_ BitVec 64))

(assert (=> b!461549 (= lt!209073 (select (arr!13747 lt!209000) #b00000000000000000000000000000000))))

(declare-fun lt!209075 () Unit!13381)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28621 (_ BitVec 64) (_ BitVec 32)) Unit!13381)

(assert (=> b!461549 (= lt!209075 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!209000 lt!209073 #b00000000000000000000000000000000))))

(assert (=> b!461549 (arrayContainsKey!0 lt!209000 lt!209073 #b00000000000000000000000000000000)))

(declare-fun lt!209074 () Unit!13381)

(assert (=> b!461549 (= lt!209074 lt!209075)))

(declare-fun res!276186 () Bool)

(declare-datatypes ((SeekEntryResult!3525 0))(
  ( (MissingZero!3525 (index!16279 (_ BitVec 32))) (Found!3525 (index!16280 (_ BitVec 32))) (Intermediate!3525 (undefined!4337 Bool) (index!16281 (_ BitVec 32)) (x!43006 (_ BitVec 32))) (Undefined!3525) (MissingVacant!3525 (index!16282 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28621 (_ BitVec 32)) SeekEntryResult!3525)

(assert (=> b!461549 (= res!276186 (= (seekEntryOrOpen!0 (select (arr!13747 lt!209000) #b00000000000000000000000000000000) lt!209000 mask!1025) (Found!3525 #b00000000000000000000000000000000)))))

(assert (=> b!461549 (=> (not res!276186) (not e!269161))))

(declare-fun b!461550 () Bool)

(assert (=> b!461550 (= e!269159 e!269160)))

(declare-fun c!56531 () Bool)

(assert (=> b!461550 (= c!56531 (validKeyInArray!0 (select (arr!13747 lt!209000) #b00000000000000000000000000000000)))))

(assert (= (and d!74757 (not res!276185)) b!461550))

(assert (= (and b!461550 c!56531) b!461549))

(assert (= (and b!461550 (not c!56531)) b!461547))

(assert (= (and b!461549 res!276186) b!461548))

(assert (= (or b!461548 b!461547) bm!30181))

(declare-fun m!444725 () Bool)

(assert (=> bm!30181 m!444725))

(assert (=> b!461549 m!444717))

(declare-fun m!444727 () Bool)

(assert (=> b!461549 m!444727))

(declare-fun m!444729 () Bool)

(assert (=> b!461549 m!444729))

(assert (=> b!461549 m!444717))

(declare-fun m!444731 () Bool)

(assert (=> b!461549 m!444731))

(assert (=> b!461550 m!444717))

(assert (=> b!461550 m!444717))

(assert (=> b!461550 m!444719))

(assert (=> b!461395 d!74757))

(declare-fun d!74759 () Bool)

(declare-fun res!276191 () Bool)

(declare-fun e!269166 () Bool)

(assert (=> d!74759 (=> res!276191 e!269166)))

(assert (=> d!74759 (= res!276191 (= (select (arr!13747 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74759 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!269166)))

(declare-fun b!461555 () Bool)

(declare-fun e!269167 () Bool)

(assert (=> b!461555 (= e!269166 e!269167)))

(declare-fun res!276192 () Bool)

(assert (=> b!461555 (=> (not res!276192) (not e!269167))))

(assert (=> b!461555 (= res!276192 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!14099 _keys!709)))))

(declare-fun b!461556 () Bool)

(assert (=> b!461556 (= e!269167 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74759 (not res!276191)) b!461555))

(assert (= (and b!461555 res!276192) b!461556))

(declare-fun m!444733 () Bool)

(assert (=> d!74759 m!444733))

(declare-fun m!444735 () Bool)

(assert (=> b!461556 m!444735))

(assert (=> b!461403 d!74759))

(declare-fun b!461557 () Bool)

(declare-fun e!269170 () Bool)

(declare-fun e!269168 () Bool)

(assert (=> b!461557 (= e!269170 e!269168)))

(declare-fun res!276195 () Bool)

(assert (=> b!461557 (=> (not res!276195) (not e!269168))))

(declare-fun e!269169 () Bool)

(assert (=> b!461557 (= res!276195 (not e!269169))))

(declare-fun res!276194 () Bool)

(assert (=> b!461557 (=> (not res!276194) (not e!269169))))

(assert (=> b!461557 (= res!276194 (validKeyInArray!0 (select (arr!13747 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!461558 () Bool)

(declare-fun e!269171 () Bool)

(declare-fun call!30185 () Bool)

(assert (=> b!461558 (= e!269171 call!30185)))

(declare-fun b!461559 () Bool)

(assert (=> b!461559 (= e!269169 (contains!2516 Nil!8328 (select (arr!13747 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!30182 () Bool)

(declare-fun c!56532 () Bool)

(assert (=> bm!30182 (= call!30185 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56532 (Cons!8327 (select (arr!13747 _keys!709) #b00000000000000000000000000000000) Nil!8328) Nil!8328)))))

(declare-fun b!461560 () Bool)

(assert (=> b!461560 (= e!269168 e!269171)))

(assert (=> b!461560 (= c!56532 (validKeyInArray!0 (select (arr!13747 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!74761 () Bool)

(declare-fun res!276193 () Bool)

(assert (=> d!74761 (=> res!276193 e!269170)))

(assert (=> d!74761 (= res!276193 (bvsge #b00000000000000000000000000000000 (size!14099 _keys!709)))))

(assert (=> d!74761 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8328) e!269170)))

(declare-fun b!461561 () Bool)

(assert (=> b!461561 (= e!269171 call!30185)))

(assert (= (and d!74761 (not res!276193)) b!461557))

(assert (= (and b!461557 res!276194) b!461559))

(assert (= (and b!461557 res!276195) b!461560))

(assert (= (and b!461560 c!56532) b!461561))

(assert (= (and b!461560 (not c!56532)) b!461558))

(assert (= (or b!461561 b!461558) bm!30182))

(assert (=> b!461557 m!444733))

(assert (=> b!461557 m!444733))

(declare-fun m!444737 () Bool)

(assert (=> b!461557 m!444737))

(assert (=> b!461559 m!444733))

(assert (=> b!461559 m!444733))

(declare-fun m!444739 () Bool)

(assert (=> b!461559 m!444739))

(assert (=> bm!30182 m!444733))

(declare-fun m!444741 () Bool)

(assert (=> bm!30182 m!444741))

(assert (=> b!461560 m!444733))

(assert (=> b!461560 m!444733))

(assert (=> b!461560 m!444737))

(assert (=> b!461393 d!74761))

(declare-fun b!461562 () Bool)

(declare-fun e!269173 () Bool)

(declare-fun call!30186 () Bool)

(assert (=> b!461562 (= e!269173 call!30186)))

(declare-fun bm!30183 () Bool)

(assert (=> bm!30183 (= call!30186 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!461563 () Bool)

(declare-fun e!269174 () Bool)

(assert (=> b!461563 (= e!269174 call!30186)))

(declare-fun d!74763 () Bool)

(declare-fun res!276196 () Bool)

(declare-fun e!269172 () Bool)

(assert (=> d!74763 (=> res!276196 e!269172)))

(assert (=> d!74763 (= res!276196 (bvsge #b00000000000000000000000000000000 (size!14099 _keys!709)))))

(assert (=> d!74763 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!269172)))

(declare-fun b!461564 () Bool)

(assert (=> b!461564 (= e!269173 e!269174)))

(declare-fun lt!209076 () (_ BitVec 64))

(assert (=> b!461564 (= lt!209076 (select (arr!13747 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!209078 () Unit!13381)

(assert (=> b!461564 (= lt!209078 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!209076 #b00000000000000000000000000000000))))

(assert (=> b!461564 (arrayContainsKey!0 _keys!709 lt!209076 #b00000000000000000000000000000000)))

(declare-fun lt!209077 () Unit!13381)

(assert (=> b!461564 (= lt!209077 lt!209078)))

(declare-fun res!276197 () Bool)

(assert (=> b!461564 (= res!276197 (= (seekEntryOrOpen!0 (select (arr!13747 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3525 #b00000000000000000000000000000000)))))

(assert (=> b!461564 (=> (not res!276197) (not e!269174))))

(declare-fun b!461565 () Bool)

(assert (=> b!461565 (= e!269172 e!269173)))

(declare-fun c!56533 () Bool)

(assert (=> b!461565 (= c!56533 (validKeyInArray!0 (select (arr!13747 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!74763 (not res!276196)) b!461565))

(assert (= (and b!461565 c!56533) b!461564))

(assert (= (and b!461565 (not c!56533)) b!461562))

(assert (= (and b!461564 res!276197) b!461563))

(assert (= (or b!461563 b!461562) bm!30183))

(declare-fun m!444743 () Bool)

(assert (=> bm!30183 m!444743))

(assert (=> b!461564 m!444733))

(declare-fun m!444745 () Bool)

(assert (=> b!461564 m!444745))

(declare-fun m!444747 () Bool)

(assert (=> b!461564 m!444747))

(assert (=> b!461564 m!444733))

(declare-fun m!444749 () Bool)

(assert (=> b!461564 m!444749))

(assert (=> b!461565 m!444733))

(assert (=> b!461565 m!444733))

(assert (=> b!461565 m!444737))

(assert (=> b!461394 d!74763))

(declare-fun d!74765 () Bool)

(declare-fun e!269175 () Bool)

(assert (=> d!74765 e!269175))

(declare-fun res!276199 () Bool)

(assert (=> d!74765 (=> (not res!276199) (not e!269175))))

(declare-fun lt!209082 () ListLongMap!7155)

(assert (=> d!74765 (= res!276199 (contains!2514 lt!209082 (_1!4124 lt!209004)))))

(declare-fun lt!209079 () List!8332)

(assert (=> d!74765 (= lt!209082 (ListLongMap!7156 lt!209079))))

(declare-fun lt!209081 () Unit!13381)

(declare-fun lt!209080 () Unit!13381)

(assert (=> d!74765 (= lt!209081 lt!209080)))

(assert (=> d!74765 (= (getValueByKey!374 lt!209079 (_1!4124 lt!209004)) (Some!379 (_2!4124 lt!209004)))))

(assert (=> d!74765 (= lt!209080 (lemmaContainsTupThenGetReturnValue!198 lt!209079 (_1!4124 lt!209004) (_2!4124 lt!209004)))))

(assert (=> d!74765 (= lt!209079 (insertStrictlySorted!200 (toList!3593 lt!209002) (_1!4124 lt!209004) (_2!4124 lt!209004)))))

(assert (=> d!74765 (= (+!1609 lt!209002 lt!209004) lt!209082)))

(declare-fun b!461566 () Bool)

(declare-fun res!276198 () Bool)

(assert (=> b!461566 (=> (not res!276198) (not e!269175))))

(assert (=> b!461566 (= res!276198 (= (getValueByKey!374 (toList!3593 lt!209082) (_1!4124 lt!209004)) (Some!379 (_2!4124 lt!209004))))))

(declare-fun b!461567 () Bool)

(assert (=> b!461567 (= e!269175 (contains!2515 (toList!3593 lt!209082) lt!209004))))

(assert (= (and d!74765 res!276199) b!461566))

(assert (= (and b!461566 res!276198) b!461567))

(declare-fun m!444751 () Bool)

(assert (=> d!74765 m!444751))

(declare-fun m!444753 () Bool)

(assert (=> d!74765 m!444753))

(declare-fun m!444755 () Bool)

(assert (=> d!74765 m!444755))

(declare-fun m!444757 () Bool)

(assert (=> d!74765 m!444757))

(declare-fun m!444759 () Bool)

(assert (=> b!461566 m!444759))

(declare-fun m!444761 () Bool)

(assert (=> b!461567 m!444761))

(assert (=> b!461397 d!74765))

(declare-fun b!461568 () Bool)

(declare-fun e!269179 () Bool)

(declare-fun lt!209084 () ListLongMap!7155)

(assert (=> b!461568 (= e!269179 (isEmpty!570 lt!209084))))

(declare-fun b!461569 () Bool)

(declare-fun lt!209083 () Unit!13381)

(declare-fun lt!209087 () Unit!13381)

(assert (=> b!461569 (= lt!209083 lt!209087)))

(declare-fun lt!209085 () (_ BitVec 64))

(declare-fun lt!209086 () ListLongMap!7155)

(declare-fun lt!209089 () (_ BitVec 64))

(declare-fun lt!209088 () V!17677)

(assert (=> b!461569 (not (contains!2514 (+!1609 lt!209086 (tuple2!8229 lt!209085 lt!209088)) lt!209089))))

(assert (=> b!461569 (= lt!209087 (addStillNotContains!153 lt!209086 lt!209085 lt!209088 lt!209089))))

(assert (=> b!461569 (= lt!209089 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!461569 (= lt!209088 (get!6802 (select (arr!13748 lt!209005) from!863) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!461569 (= lt!209085 (select (arr!13747 lt!209000) from!863))))

(declare-fun call!30187 () ListLongMap!7155)

(assert (=> b!461569 (= lt!209086 call!30187)))

(declare-fun e!269180 () ListLongMap!7155)

(assert (=> b!461569 (= e!269180 (+!1609 call!30187 (tuple2!8229 (select (arr!13747 lt!209000) from!863) (get!6802 (select (arr!13748 lt!209005) from!863) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!461570 () Bool)

(assert (=> b!461570 (= e!269180 call!30187)))

(declare-fun b!461571 () Bool)

(assert (=> b!461571 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14099 lt!209000)))))

(assert (=> b!461571 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14100 lt!209005)))))

(declare-fun e!269176 () Bool)

(assert (=> b!461571 (= e!269176 (= (apply!318 lt!209084 (select (arr!13747 lt!209000) from!863)) (get!6802 (select (arr!13748 lt!209005) from!863) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!461573 () Bool)

(declare-fun e!269181 () Bool)

(declare-fun e!269177 () Bool)

(assert (=> b!461573 (= e!269181 e!269177)))

(declare-fun c!56534 () Bool)

(declare-fun e!269178 () Bool)

(assert (=> b!461573 (= c!56534 e!269178)))

(declare-fun res!276203 () Bool)

(assert (=> b!461573 (=> (not res!276203) (not e!269178))))

(assert (=> b!461573 (= res!276203 (bvslt from!863 (size!14099 lt!209000)))))

(declare-fun b!461574 () Bool)

(declare-fun e!269182 () ListLongMap!7155)

(assert (=> b!461574 (= e!269182 e!269180)))

(declare-fun c!56536 () Bool)

(assert (=> b!461574 (= c!56536 (validKeyInArray!0 (select (arr!13747 lt!209000) from!863)))))

(declare-fun b!461575 () Bool)

(assert (=> b!461575 (= e!269182 (ListLongMap!7156 Nil!8329))))

(declare-fun b!461576 () Bool)

(assert (=> b!461576 (= e!269179 (= lt!209084 (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!461577 () Bool)

(assert (=> b!461577 (= e!269178 (validKeyInArray!0 (select (arr!13747 lt!209000) from!863)))))

(assert (=> b!461577 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!461578 () Bool)

(declare-fun res!276200 () Bool)

(assert (=> b!461578 (=> (not res!276200) (not e!269181))))

(assert (=> b!461578 (= res!276200 (not (contains!2514 lt!209084 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461579 () Bool)

(assert (=> b!461579 (= e!269177 e!269179)))

(declare-fun c!56535 () Bool)

(assert (=> b!461579 (= c!56535 (bvslt from!863 (size!14099 lt!209000)))))

(declare-fun bm!30184 () Bool)

(assert (=> bm!30184 (= call!30187 (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun d!74767 () Bool)

(assert (=> d!74767 e!269181))

(declare-fun res!276201 () Bool)

(assert (=> d!74767 (=> (not res!276201) (not e!269181))))

(assert (=> d!74767 (= res!276201 (not (contains!2514 lt!209084 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74767 (= lt!209084 e!269182)))

(declare-fun c!56537 () Bool)

(assert (=> d!74767 (= c!56537 (bvsge from!863 (size!14099 lt!209000)))))

(assert (=> d!74767 (validMask!0 mask!1025)))

(assert (=> d!74767 (= (getCurrentListMapNoExtraKeys!1761 lt!209000 lt!209005 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!209084)))

(declare-fun b!461572 () Bool)

(assert (=> b!461572 (= e!269177 e!269176)))

(assert (=> b!461572 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14099 lt!209000)))))

(declare-fun res!276202 () Bool)

(assert (=> b!461572 (= res!276202 (contains!2514 lt!209084 (select (arr!13747 lt!209000) from!863)))))

(assert (=> b!461572 (=> (not res!276202) (not e!269176))))

(assert (= (and d!74767 c!56537) b!461575))

(assert (= (and d!74767 (not c!56537)) b!461574))

(assert (= (and b!461574 c!56536) b!461569))

(assert (= (and b!461574 (not c!56536)) b!461570))

(assert (= (or b!461569 b!461570) bm!30184))

(assert (= (and d!74767 res!276201) b!461578))

(assert (= (and b!461578 res!276200) b!461573))

(assert (= (and b!461573 res!276203) b!461577))

(assert (= (and b!461573 c!56534) b!461572))

(assert (= (and b!461573 (not c!56534)) b!461579))

(assert (= (and b!461572 res!276202) b!461571))

(assert (= (and b!461579 c!56535) b!461576))

(assert (= (and b!461579 (not c!56535)) b!461568))

(declare-fun b_lambda!9971 () Bool)

(assert (=> (not b_lambda!9971) (not b!461569)))

(assert (=> b!461569 t!14286))

(declare-fun b_and!19441 () Bool)

(assert (= b_and!19439 (and (=> t!14286 result!7357) b_and!19441)))

(declare-fun b_lambda!9973 () Bool)

(assert (=> (not b_lambda!9973) (not b!461571)))

(assert (=> b!461571 t!14286))

(declare-fun b_and!19443 () Bool)

(assert (= b_and!19441 (and (=> t!14286 result!7357) b_and!19443)))

(declare-fun m!444763 () Bool)

(assert (=> b!461572 m!444763))

(assert (=> b!461572 m!444763))

(declare-fun m!444765 () Bool)

(assert (=> b!461572 m!444765))

(declare-fun m!444767 () Bool)

(assert (=> b!461578 m!444767))

(assert (=> b!461569 m!444763))

(declare-fun m!444769 () Bool)

(assert (=> b!461569 m!444769))

(declare-fun m!444771 () Bool)

(assert (=> b!461569 m!444771))

(declare-fun m!444773 () Bool)

(assert (=> b!461569 m!444773))

(declare-fun m!444775 () Bool)

(assert (=> b!461569 m!444775))

(assert (=> b!461569 m!444773))

(declare-fun m!444777 () Bool)

(assert (=> b!461569 m!444777))

(assert (=> b!461569 m!444657))

(declare-fun m!444779 () Bool)

(assert (=> b!461569 m!444779))

(assert (=> b!461569 m!444777))

(assert (=> b!461569 m!444657))

(assert (=> b!461571 m!444763))

(assert (=> b!461571 m!444763))

(declare-fun m!444781 () Bool)

(assert (=> b!461571 m!444781))

(assert (=> b!461571 m!444777))

(assert (=> b!461571 m!444657))

(assert (=> b!461571 m!444779))

(assert (=> b!461571 m!444777))

(assert (=> b!461571 m!444657))

(declare-fun m!444783 () Bool)

(assert (=> b!461568 m!444783))

(declare-fun m!444785 () Bool)

(assert (=> bm!30184 m!444785))

(declare-fun m!444787 () Bool)

(assert (=> d!74767 m!444787))

(assert (=> d!74767 m!444591))

(assert (=> b!461576 m!444785))

(assert (=> b!461577 m!444763))

(assert (=> b!461577 m!444763))

(declare-fun m!444789 () Bool)

(assert (=> b!461577 m!444789))

(assert (=> b!461574 m!444763))

(assert (=> b!461574 m!444763))

(assert (=> b!461574 m!444789))

(assert (=> b!461402 d!74767))

(declare-fun b!461580 () Bool)

(declare-fun e!269186 () Bool)

(declare-fun lt!209091 () ListLongMap!7155)

(assert (=> b!461580 (= e!269186 (isEmpty!570 lt!209091))))

(declare-fun b!461581 () Bool)

(declare-fun lt!209090 () Unit!13381)

(declare-fun lt!209094 () Unit!13381)

(assert (=> b!461581 (= lt!209090 lt!209094)))

(declare-fun lt!209093 () ListLongMap!7155)

(declare-fun lt!209092 () (_ BitVec 64))

(declare-fun lt!209096 () (_ BitVec 64))

(declare-fun lt!209095 () V!17677)

(assert (=> b!461581 (not (contains!2514 (+!1609 lt!209093 (tuple2!8229 lt!209092 lt!209095)) lt!209096))))

(assert (=> b!461581 (= lt!209094 (addStillNotContains!153 lt!209093 lt!209092 lt!209095 lt!209096))))

(assert (=> b!461581 (= lt!209096 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!461581 (= lt!209095 (get!6802 (select (arr!13748 _values!549) from!863) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!461581 (= lt!209092 (select (arr!13747 _keys!709) from!863))))

(declare-fun call!30188 () ListLongMap!7155)

(assert (=> b!461581 (= lt!209093 call!30188)))

(declare-fun e!269187 () ListLongMap!7155)

(assert (=> b!461581 (= e!269187 (+!1609 call!30188 (tuple2!8229 (select (arr!13747 _keys!709) from!863) (get!6802 (select (arr!13748 _values!549) from!863) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!461582 () Bool)

(assert (=> b!461582 (= e!269187 call!30188)))

(declare-fun b!461583 () Bool)

(assert (=> b!461583 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14099 _keys!709)))))

(assert (=> b!461583 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14100 _values!549)))))

(declare-fun e!269183 () Bool)

(assert (=> b!461583 (= e!269183 (= (apply!318 lt!209091 (select (arr!13747 _keys!709) from!863)) (get!6802 (select (arr!13748 _values!549) from!863) (dynLambda!910 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!461585 () Bool)

(declare-fun e!269188 () Bool)

(declare-fun e!269184 () Bool)

(assert (=> b!461585 (= e!269188 e!269184)))

(declare-fun c!56538 () Bool)

(declare-fun e!269185 () Bool)

(assert (=> b!461585 (= c!56538 e!269185)))

(declare-fun res!276207 () Bool)

(assert (=> b!461585 (=> (not res!276207) (not e!269185))))

(assert (=> b!461585 (= res!276207 (bvslt from!863 (size!14099 _keys!709)))))

(declare-fun b!461586 () Bool)

(declare-fun e!269189 () ListLongMap!7155)

(assert (=> b!461586 (= e!269189 e!269187)))

(declare-fun c!56540 () Bool)

(assert (=> b!461586 (= c!56540 (validKeyInArray!0 (select (arr!13747 _keys!709) from!863)))))

(declare-fun b!461587 () Bool)

(assert (=> b!461587 (= e!269189 (ListLongMap!7156 Nil!8329))))

(declare-fun b!461588 () Bool)

(assert (=> b!461588 (= e!269186 (= lt!209091 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!461589 () Bool)

(assert (=> b!461589 (= e!269185 (validKeyInArray!0 (select (arr!13747 _keys!709) from!863)))))

(assert (=> b!461589 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!461590 () Bool)

(declare-fun res!276204 () Bool)

(assert (=> b!461590 (=> (not res!276204) (not e!269188))))

(assert (=> b!461590 (= res!276204 (not (contains!2514 lt!209091 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461591 () Bool)

(assert (=> b!461591 (= e!269184 e!269186)))

(declare-fun c!56539 () Bool)

(assert (=> b!461591 (= c!56539 (bvslt from!863 (size!14099 _keys!709)))))

(declare-fun bm!30185 () Bool)

(assert (=> bm!30185 (= call!30188 (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun d!74769 () Bool)

(assert (=> d!74769 e!269188))

(declare-fun res!276205 () Bool)

(assert (=> d!74769 (=> (not res!276205) (not e!269188))))

(assert (=> d!74769 (= res!276205 (not (contains!2514 lt!209091 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74769 (= lt!209091 e!269189)))

(declare-fun c!56541 () Bool)

(assert (=> d!74769 (= c!56541 (bvsge from!863 (size!14099 _keys!709)))))

(assert (=> d!74769 (validMask!0 mask!1025)))

(assert (=> d!74769 (= (getCurrentListMapNoExtraKeys!1761 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!209091)))

(declare-fun b!461584 () Bool)

(assert (=> b!461584 (= e!269184 e!269183)))

(assert (=> b!461584 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14099 _keys!709)))))

(declare-fun res!276206 () Bool)

(assert (=> b!461584 (= res!276206 (contains!2514 lt!209091 (select (arr!13747 _keys!709) from!863)))))

(assert (=> b!461584 (=> (not res!276206) (not e!269183))))

(assert (= (and d!74769 c!56541) b!461587))

(assert (= (and d!74769 (not c!56541)) b!461586))

(assert (= (and b!461586 c!56540) b!461581))

(assert (= (and b!461586 (not c!56540)) b!461582))

(assert (= (or b!461581 b!461582) bm!30185))

(assert (= (and d!74769 res!276205) b!461590))

(assert (= (and b!461590 res!276204) b!461585))

(assert (= (and b!461585 res!276207) b!461589))

(assert (= (and b!461585 c!56538) b!461584))

(assert (= (and b!461585 (not c!56538)) b!461591))

(assert (= (and b!461584 res!276206) b!461583))

(assert (= (and b!461591 c!56539) b!461588))

(assert (= (and b!461591 (not c!56539)) b!461580))

(declare-fun b_lambda!9975 () Bool)

(assert (=> (not b_lambda!9975) (not b!461581)))

(assert (=> b!461581 t!14286))

(declare-fun b_and!19445 () Bool)

(assert (= b_and!19443 (and (=> t!14286 result!7357) b_and!19445)))

(declare-fun b_lambda!9977 () Bool)

(assert (=> (not b_lambda!9977) (not b!461583)))

(assert (=> b!461583 t!14286))

(declare-fun b_and!19447 () Bool)

(assert (= b_and!19445 (and (=> t!14286 result!7357) b_and!19447)))

(assert (=> b!461584 m!444555))

(assert (=> b!461584 m!444555))

(declare-fun m!444791 () Bool)

(assert (=> b!461584 m!444791))

(declare-fun m!444793 () Bool)

(assert (=> b!461590 m!444793))

(assert (=> b!461581 m!444555))

(declare-fun m!444795 () Bool)

(assert (=> b!461581 m!444795))

(declare-fun m!444797 () Bool)

(assert (=> b!461581 m!444797))

(declare-fun m!444799 () Bool)

(assert (=> b!461581 m!444799))

(declare-fun m!444801 () Bool)

(assert (=> b!461581 m!444801))

(assert (=> b!461581 m!444799))

(declare-fun m!444803 () Bool)

(assert (=> b!461581 m!444803))

(assert (=> b!461581 m!444657))

(declare-fun m!444805 () Bool)

(assert (=> b!461581 m!444805))

(assert (=> b!461581 m!444803))

(assert (=> b!461581 m!444657))

(assert (=> b!461583 m!444555))

(assert (=> b!461583 m!444555))

(declare-fun m!444807 () Bool)

(assert (=> b!461583 m!444807))

(assert (=> b!461583 m!444803))

(assert (=> b!461583 m!444657))

(assert (=> b!461583 m!444805))

(assert (=> b!461583 m!444803))

(assert (=> b!461583 m!444657))

(declare-fun m!444809 () Bool)

(assert (=> b!461580 m!444809))

(declare-fun m!444811 () Bool)

(assert (=> bm!30185 m!444811))

(declare-fun m!444813 () Bool)

(assert (=> d!74769 m!444813))

(assert (=> d!74769 m!444591))

(assert (=> b!461588 m!444811))

(assert (=> b!461589 m!444555))

(assert (=> b!461589 m!444555))

(assert (=> b!461589 m!444563))

(assert (=> b!461586 m!444555))

(assert (=> b!461586 m!444555))

(assert (=> b!461586 m!444563))

(assert (=> b!461402 d!74769))

(declare-fun mapNonEmpty!20302 () Bool)

(declare-fun mapRes!20302 () Bool)

(declare-fun tp!39121 () Bool)

(declare-fun e!269195 () Bool)

(assert (=> mapNonEmpty!20302 (= mapRes!20302 (and tp!39121 e!269195))))

(declare-fun mapValue!20302 () ValueCell!5871)

(declare-fun mapRest!20302 () (Array (_ BitVec 32) ValueCell!5871))

(declare-fun mapKey!20302 () (_ BitVec 32))

(assert (=> mapNonEmpty!20302 (= mapRest!20296 (store mapRest!20302 mapKey!20302 mapValue!20302))))

(declare-fun mapIsEmpty!20302 () Bool)

(assert (=> mapIsEmpty!20302 mapRes!20302))

(declare-fun b!461598 () Bool)

(assert (=> b!461598 (= e!269195 tp_is_empty!12429)))

(declare-fun condMapEmpty!20302 () Bool)

(declare-fun mapDefault!20302 () ValueCell!5871)

(assert (=> mapNonEmpty!20296 (= condMapEmpty!20302 (= mapRest!20296 ((as const (Array (_ BitVec 32) ValueCell!5871)) mapDefault!20302)))))

(declare-fun e!269194 () Bool)

(assert (=> mapNonEmpty!20296 (= tp!39112 (and e!269194 mapRes!20302))))

(declare-fun b!461599 () Bool)

(assert (=> b!461599 (= e!269194 tp_is_empty!12429)))

(assert (= (and mapNonEmpty!20296 condMapEmpty!20302) mapIsEmpty!20302))

(assert (= (and mapNonEmpty!20296 (not condMapEmpty!20302)) mapNonEmpty!20302))

(assert (= (and mapNonEmpty!20302 ((_ is ValueCellFull!5871) mapValue!20302)) b!461598))

(assert (= (and mapNonEmpty!20296 ((_ is ValueCellFull!5871) mapDefault!20302)) b!461599))

(declare-fun m!444815 () Bool)

(assert (=> mapNonEmpty!20302 m!444815))

(declare-fun b_lambda!9979 () Bool)

(assert (= b_lambda!9975 (or (and start!41256 b_free!11091) b_lambda!9979)))

(declare-fun b_lambda!9981 () Bool)

(assert (= b_lambda!9965 (or (and start!41256 b_free!11091) b_lambda!9981)))

(declare-fun b_lambda!9983 () Bool)

(assert (= b_lambda!9973 (or (and start!41256 b_free!11091) b_lambda!9983)))

(declare-fun b_lambda!9985 () Bool)

(assert (= b_lambda!9963 (or (and start!41256 b_free!11091) b_lambda!9985)))

(declare-fun b_lambda!9987 () Bool)

(assert (= b_lambda!9971 (or (and start!41256 b_free!11091) b_lambda!9987)))

(declare-fun b_lambda!9989 () Bool)

(assert (= b_lambda!9969 (or (and start!41256 b_free!11091) b_lambda!9989)))

(declare-fun b_lambda!9991 () Bool)

(assert (= b_lambda!9977 (or (and start!41256 b_free!11091) b_lambda!9991)))

(declare-fun b_lambda!9993 () Bool)

(assert (= b_lambda!9967 (or (and start!41256 b_free!11091) b_lambda!9993)))

(check-sat (not b!461578) (not b!461580) (not b!461505) (not b!461572) (not b!461537) (not b!461483) (not b!461559) (not b!461565) (not b!461484) (not b_lambda!9981) (not d!74767) (not b!461503) (not b!461586) (not b!461568) (not b!461523) (not b!461514) (not bm!30185) (not d!74745) (not b!461588) (not b!461576) (not b!461513) (not d!74769) (not b!461489) (not b_lambda!9983) (not b_lambda!9979) (not b!461487) tp_is_empty!12429 (not b_lambda!9987) (not d!74765) b_and!19447 (not b!461534) (not b_lambda!9991) (not bm!30169) (not b!461567) (not bm!30181) (not b!461581) (not b!461583) (not b!461492) (not bm!30182) (not d!74743) (not b!461507) (not bm!30184) (not d!74739) (not b!461486) (not b!461577) (not b!461560) (not b!461550) (not b!461589) (not b!461491) (not b!461498) (not b_lambda!9985) (not mapNonEmpty!20302) (not bm!30168) (not b!461574) (not b!461564) (not b!461571) (not b!461557) (not b!461493) (not b_lambda!9989) (not bm!30183) (not b!461590) (not d!74737) (not bm!30178) (not b!461501) (not b!461566) (not b!461497) (not b!461506) (not bm!30174) (not b_lambda!9993) (not b!461536) (not b!461500) (not b!461584) (not b!461549) (not b_next!11091) (not b!461556) (not b!461569) (not bm!30175))
(check-sat b_and!19447 (not b_next!11091))
