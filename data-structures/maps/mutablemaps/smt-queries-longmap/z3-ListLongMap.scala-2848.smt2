; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41084 () Bool)

(assert start!41084)

(declare-fun b_free!10989 () Bool)

(declare-fun b_next!10989 () Bool)

(assert (=> start!41084 (= b_free!10989 (not b_next!10989))))

(declare-fun tp!38796 () Bool)

(declare-fun b_and!19203 () Bool)

(assert (=> start!41084 (= tp!38796 b_and!19203)))

(declare-fun b!458055 () Bool)

(declare-fun res!273724 () Bool)

(declare-fun e!267435 () Bool)

(assert (=> b!458055 (=> (not res!273724) (not e!267435))))

(declare-datatypes ((array!28421 0))(
  ( (array!28422 (arr!13650 (Array (_ BitVec 32) (_ BitVec 64))) (size!14002 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28421)

(declare-datatypes ((List!8251 0))(
  ( (Nil!8248) (Cons!8247 (h!9103 (_ BitVec 64)) (t!14127 List!8251)) )
))
(declare-fun arrayNoDuplicates!0 (array!28421 (_ BitVec 32) List!8251) Bool)

(assert (=> b!458055 (= res!273724 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8248))))

(declare-fun b!458057 () Bool)

(declare-fun res!273733 () Bool)

(assert (=> b!458057 (=> (not res!273733) (not e!267435))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458057 (= res!273733 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14002 _keys!709))))))

(declare-fun mapNonEmpty!20134 () Bool)

(declare-fun mapRes!20134 () Bool)

(declare-fun tp!38797 () Bool)

(declare-fun e!267434 () Bool)

(assert (=> mapNonEmpty!20134 (= mapRes!20134 (and tp!38797 e!267434))))

(declare-datatypes ((V!17541 0))(
  ( (V!17542 (val!6208 Int)) )
))
(declare-datatypes ((ValueCell!5820 0))(
  ( (ValueCellFull!5820 (v!8474 V!17541)) (EmptyCell!5820) )
))
(declare-fun mapValue!20134 () ValueCell!5820)

(declare-datatypes ((array!28423 0))(
  ( (array!28424 (arr!13651 (Array (_ BitVec 32) ValueCell!5820)) (size!14003 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28423)

(declare-fun mapKey!20134 () (_ BitVec 32))

(declare-fun mapRest!20134 () (Array (_ BitVec 32) ValueCell!5820))

(assert (=> mapNonEmpty!20134 (= (arr!13651 _values!549) (store mapRest!20134 mapKey!20134 mapValue!20134))))

(declare-fun b!458058 () Bool)

(declare-fun e!267437 () Bool)

(declare-fun tp_is_empty!12327 () Bool)

(assert (=> b!458058 (= e!267437 tp_is_empty!12327)))

(declare-fun b!458059 () Bool)

(declare-fun res!273735 () Bool)

(assert (=> b!458059 (=> (not res!273735) (not e!267435))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28421 (_ BitVec 32)) Bool)

(assert (=> b!458059 (= res!273735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!458060 () Bool)

(assert (=> b!458060 (= e!267434 tp_is_empty!12327)))

(declare-fun b!458061 () Bool)

(declare-fun e!267433 () Bool)

(assert (=> b!458061 (= e!267435 e!267433)))

(declare-fun res!273730 () Bool)

(assert (=> b!458061 (=> (not res!273730) (not e!267433))))

(declare-fun lt!207248 () array!28421)

(assert (=> b!458061 (= res!273730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207248 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!458061 (= lt!207248 (array!28422 (store (arr!13650 _keys!709) i!563 k0!794) (size!14002 _keys!709)))))

(declare-fun b!458062 () Bool)

(declare-fun e!267439 () Bool)

(declare-fun e!267432 () Bool)

(assert (=> b!458062 (= e!267439 (not e!267432))))

(declare-fun res!273722 () Bool)

(assert (=> b!458062 (=> res!273722 e!267432)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458062 (= res!273722 (not (validKeyInArray!0 (select (arr!13650 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8148 0))(
  ( (tuple2!8149 (_1!4084 (_ BitVec 64)) (_2!4084 V!17541)) )
))
(declare-datatypes ((List!8252 0))(
  ( (Nil!8249) (Cons!8248 (h!9104 tuple2!8148) (t!14128 List!8252)) )
))
(declare-datatypes ((ListLongMap!7075 0))(
  ( (ListLongMap!7076 (toList!3553 List!8252)) )
))
(declare-fun lt!207243 () ListLongMap!7075)

(declare-fun lt!207250 () ListLongMap!7075)

(assert (=> b!458062 (= lt!207243 lt!207250)))

(declare-fun v!412 () V!17541)

(declare-fun lt!207244 () ListLongMap!7075)

(declare-fun +!1573 (ListLongMap!7075 tuple2!8148) ListLongMap!7075)

(assert (=> b!458062 (= lt!207250 (+!1573 lt!207244 (tuple2!8149 k0!794 v!412)))))

(declare-fun minValue!515 () V!17541)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17541)

(declare-fun lt!207245 () array!28423)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1725 (array!28421 array!28423 (_ BitVec 32) (_ BitVec 32) V!17541 V!17541 (_ BitVec 32) Int) ListLongMap!7075)

(assert (=> b!458062 (= lt!207243 (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!458062 (= lt!207244 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13259 0))(
  ( (Unit!13260) )
))
(declare-fun lt!207249 () Unit!13259)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!732 (array!28421 array!28423 (_ BitVec 32) (_ BitVec 32) V!17541 V!17541 (_ BitVec 32) (_ BitVec 64) V!17541 (_ BitVec 32) Int) Unit!13259)

(assert (=> b!458062 (= lt!207249 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!732 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458063 () Bool)

(assert (=> b!458063 (= e!267433 e!267439)))

(declare-fun res!273725 () Bool)

(assert (=> b!458063 (=> (not res!273725) (not e!267439))))

(assert (=> b!458063 (= res!273725 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!207247 () ListLongMap!7075)

(assert (=> b!458063 (= lt!207247 (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!458063 (= lt!207245 (array!28424 (store (arr!13651 _values!549) i!563 (ValueCellFull!5820 v!412)) (size!14003 _values!549)))))

(declare-fun lt!207246 () ListLongMap!7075)

(assert (=> b!458063 (= lt!207246 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!458064 () Bool)

(declare-fun res!273728 () Bool)

(assert (=> b!458064 (=> (not res!273728) (not e!267435))))

(assert (=> b!458064 (= res!273728 (or (= (select (arr!13650 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13650 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458065 () Bool)

(declare-fun res!273727 () Bool)

(assert (=> b!458065 (=> (not res!273727) (not e!267435))))

(assert (=> b!458065 (= res!273727 (validKeyInArray!0 k0!794))))

(declare-fun b!458066 () Bool)

(declare-fun res!273732 () Bool)

(assert (=> b!458066 (=> (not res!273732) (not e!267435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458066 (= res!273732 (validMask!0 mask!1025))))

(declare-fun b!458056 () Bool)

(declare-fun res!273734 () Bool)

(assert (=> b!458056 (=> (not res!273734) (not e!267433))))

(assert (=> b!458056 (= res!273734 (arrayNoDuplicates!0 lt!207248 #b00000000000000000000000000000000 Nil!8248))))

(declare-fun res!273726 () Bool)

(assert (=> start!41084 (=> (not res!273726) (not e!267435))))

(assert (=> start!41084 (= res!273726 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14002 _keys!709))))))

(assert (=> start!41084 e!267435))

(assert (=> start!41084 tp_is_empty!12327))

(assert (=> start!41084 tp!38796))

(assert (=> start!41084 true))

(declare-fun e!267436 () Bool)

(declare-fun array_inv!9874 (array!28423) Bool)

(assert (=> start!41084 (and (array_inv!9874 _values!549) e!267436)))

(declare-fun array_inv!9875 (array!28421) Bool)

(assert (=> start!41084 (array_inv!9875 _keys!709)))

(declare-fun b!458067 () Bool)

(declare-fun res!273729 () Bool)

(assert (=> b!458067 (=> (not res!273729) (not e!267435))))

(assert (=> b!458067 (= res!273729 (and (= (size!14003 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14002 _keys!709) (size!14003 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458068 () Bool)

(declare-fun res!273723 () Bool)

(assert (=> b!458068 (=> (not res!273723) (not e!267433))))

(assert (=> b!458068 (= res!273723 (bvsle from!863 i!563))))

(declare-fun b!458069 () Bool)

(assert (=> b!458069 (= e!267436 (and e!267437 mapRes!20134))))

(declare-fun condMapEmpty!20134 () Bool)

(declare-fun mapDefault!20134 () ValueCell!5820)

(assert (=> b!458069 (= condMapEmpty!20134 (= (arr!13651 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5820)) mapDefault!20134)))))

(declare-fun b!458070 () Bool)

(declare-fun res!273731 () Bool)

(assert (=> b!458070 (=> (not res!273731) (not e!267435))))

(declare-fun arrayContainsKey!0 (array!28421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458070 (= res!273731 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!458071 () Bool)

(assert (=> b!458071 (= e!267432 (or (not (= (select (arr!13650 _keys!709) from!863) k0!794)) (bvsge from!863 (size!14002 _keys!709)) (bvslt (size!14002 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun get!6736 (ValueCell!5820 V!17541) V!17541)

(declare-fun dynLambda!884 (Int (_ BitVec 64)) V!17541)

(assert (=> b!458071 (= lt!207247 (+!1573 lt!207250 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!20134 () Bool)

(assert (=> mapIsEmpty!20134 mapRes!20134))

(assert (= (and start!41084 res!273726) b!458066))

(assert (= (and b!458066 res!273732) b!458067))

(assert (= (and b!458067 res!273729) b!458059))

(assert (= (and b!458059 res!273735) b!458055))

(assert (= (and b!458055 res!273724) b!458057))

(assert (= (and b!458057 res!273733) b!458065))

(assert (= (and b!458065 res!273727) b!458064))

(assert (= (and b!458064 res!273728) b!458070))

(assert (= (and b!458070 res!273731) b!458061))

(assert (= (and b!458061 res!273730) b!458056))

(assert (= (and b!458056 res!273734) b!458068))

(assert (= (and b!458068 res!273723) b!458063))

(assert (= (and b!458063 res!273725) b!458062))

(assert (= (and b!458062 (not res!273722)) b!458071))

(assert (= (and b!458069 condMapEmpty!20134) mapIsEmpty!20134))

(assert (= (and b!458069 (not condMapEmpty!20134)) mapNonEmpty!20134))

(get-info :version)

(assert (= (and mapNonEmpty!20134 ((_ is ValueCellFull!5820) mapValue!20134)) b!458060))

(assert (= (and b!458069 ((_ is ValueCellFull!5820) mapDefault!20134)) b!458058))

(assert (= start!41084 b!458069))

(declare-fun b_lambda!9785 () Bool)

(assert (=> (not b_lambda!9785) (not b!458071)))

(declare-fun t!14126 () Bool)

(declare-fun tb!3833 () Bool)

(assert (=> (and start!41084 (= defaultEntry!557 defaultEntry!557) t!14126) tb!3833))

(declare-fun result!7199 () Bool)

(assert (=> tb!3833 (= result!7199 tp_is_empty!12327)))

(assert (=> b!458071 t!14126))

(declare-fun b_and!19205 () Bool)

(assert (= b_and!19203 (and (=> t!14126 result!7199) b_and!19205)))

(declare-fun m!441401 () Bool)

(assert (=> b!458061 m!441401))

(declare-fun m!441403 () Bool)

(assert (=> b!458061 m!441403))

(declare-fun m!441405 () Bool)

(assert (=> b!458059 m!441405))

(declare-fun m!441407 () Bool)

(assert (=> b!458055 m!441407))

(declare-fun m!441409 () Bool)

(assert (=> b!458065 m!441409))

(declare-fun m!441411 () Bool)

(assert (=> b!458056 m!441411))

(declare-fun m!441413 () Bool)

(assert (=> b!458066 m!441413))

(declare-fun m!441415 () Bool)

(assert (=> b!458064 m!441415))

(declare-fun m!441417 () Bool)

(assert (=> b!458070 m!441417))

(declare-fun m!441419 () Bool)

(assert (=> b!458062 m!441419))

(declare-fun m!441421 () Bool)

(assert (=> b!458062 m!441421))

(declare-fun m!441423 () Bool)

(assert (=> b!458062 m!441423))

(declare-fun m!441425 () Bool)

(assert (=> b!458062 m!441425))

(assert (=> b!458062 m!441419))

(declare-fun m!441427 () Bool)

(assert (=> b!458062 m!441427))

(declare-fun m!441429 () Bool)

(assert (=> b!458062 m!441429))

(declare-fun m!441431 () Bool)

(assert (=> mapNonEmpty!20134 m!441431))

(assert (=> b!458071 m!441419))

(declare-fun m!441433 () Bool)

(assert (=> b!458071 m!441433))

(declare-fun m!441435 () Bool)

(assert (=> b!458071 m!441435))

(declare-fun m!441437 () Bool)

(assert (=> b!458071 m!441437))

(assert (=> b!458071 m!441435))

(assert (=> b!458071 m!441433))

(declare-fun m!441439 () Bool)

(assert (=> b!458071 m!441439))

(declare-fun m!441441 () Bool)

(assert (=> b!458063 m!441441))

(declare-fun m!441443 () Bool)

(assert (=> b!458063 m!441443))

(declare-fun m!441445 () Bool)

(assert (=> b!458063 m!441445))

(declare-fun m!441447 () Bool)

(assert (=> start!41084 m!441447))

(declare-fun m!441449 () Bool)

(assert (=> start!41084 m!441449))

(check-sat (not mapNonEmpty!20134) (not b!458063) (not b!458062) (not start!41084) (not b_next!10989) (not b!458070) (not b!458056) (not b_lambda!9785) (not b!458065) tp_is_empty!12327 b_and!19205 (not b!458066) (not b!458071) (not b!458055) (not b!458061) (not b!458059))
(check-sat b_and!19205 (not b_next!10989))
(get-model)

(declare-fun b_lambda!9789 () Bool)

(assert (= b_lambda!9785 (or (and start!41084 b_free!10989) b_lambda!9789)))

(check-sat (not mapNonEmpty!20134) (not b!458063) (not b!458062) (not start!41084) (not b_next!10989) (not b!458070) (not b!458056) (not b!458065) tp_is_empty!12327 b_and!19205 (not b!458071) (not b!458055) (not b!458061) (not b!458059) (not b_lambda!9789) (not b!458066))
(check-sat b_and!19205 (not b_next!10989))
(get-model)

(declare-fun d!74583 () Bool)

(assert (=> d!74583 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!458065 d!74583))

(declare-fun b!458137 () Bool)

(declare-fun e!267475 () Bool)

(declare-fun call!30111 () Bool)

(assert (=> b!458137 (= e!267475 call!30111)))

(declare-fun d!74585 () Bool)

(declare-fun res!273785 () Bool)

(declare-fun e!267473 () Bool)

(assert (=> d!74585 (=> res!273785 e!267473)))

(assert (=> d!74585 (= res!273785 (bvsge #b00000000000000000000000000000000 (size!14002 _keys!709)))))

(assert (=> d!74585 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8248) e!267473)))

(declare-fun b!458138 () Bool)

(declare-fun e!267474 () Bool)

(assert (=> b!458138 (= e!267473 e!267474)))

(declare-fun res!273786 () Bool)

(assert (=> b!458138 (=> (not res!273786) (not e!267474))))

(declare-fun e!267472 () Bool)

(assert (=> b!458138 (= res!273786 (not e!267472))))

(declare-fun res!273784 () Bool)

(assert (=> b!458138 (=> (not res!273784) (not e!267472))))

(assert (=> b!458138 (= res!273784 (validKeyInArray!0 (select (arr!13650 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!30108 () Bool)

(declare-fun c!56305 () Bool)

(assert (=> bm!30108 (= call!30111 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56305 (Cons!8247 (select (arr!13650 _keys!709) #b00000000000000000000000000000000) Nil!8248) Nil!8248)))))

(declare-fun b!458139 () Bool)

(declare-fun contains!2505 (List!8251 (_ BitVec 64)) Bool)

(assert (=> b!458139 (= e!267472 (contains!2505 Nil!8248 (select (arr!13650 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!458140 () Bool)

(assert (=> b!458140 (= e!267475 call!30111)))

(declare-fun b!458141 () Bool)

(assert (=> b!458141 (= e!267474 e!267475)))

(assert (=> b!458141 (= c!56305 (validKeyInArray!0 (select (arr!13650 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!74585 (not res!273785)) b!458138))

(assert (= (and b!458138 res!273784) b!458139))

(assert (= (and b!458138 res!273786) b!458141))

(assert (= (and b!458141 c!56305) b!458140))

(assert (= (and b!458141 (not c!56305)) b!458137))

(assert (= (or b!458140 b!458137) bm!30108))

(declare-fun m!441501 () Bool)

(assert (=> b!458138 m!441501))

(assert (=> b!458138 m!441501))

(declare-fun m!441503 () Bool)

(assert (=> b!458138 m!441503))

(assert (=> bm!30108 m!441501))

(declare-fun m!441505 () Bool)

(assert (=> bm!30108 m!441505))

(assert (=> b!458139 m!441501))

(assert (=> b!458139 m!441501))

(declare-fun m!441507 () Bool)

(assert (=> b!458139 m!441507))

(assert (=> b!458141 m!441501))

(assert (=> b!458141 m!441501))

(assert (=> b!458141 m!441503))

(assert (=> b!458055 d!74585))

(declare-fun d!74587 () Bool)

(declare-fun res!273791 () Bool)

(declare-fun e!267480 () Bool)

(assert (=> d!74587 (=> res!273791 e!267480)))

(assert (=> d!74587 (= res!273791 (= (select (arr!13650 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74587 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!267480)))

(declare-fun b!458146 () Bool)

(declare-fun e!267481 () Bool)

(assert (=> b!458146 (= e!267480 e!267481)))

(declare-fun res!273792 () Bool)

(assert (=> b!458146 (=> (not res!273792) (not e!267481))))

(assert (=> b!458146 (= res!273792 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!14002 _keys!709)))))

(declare-fun b!458147 () Bool)

(assert (=> b!458147 (= e!267481 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74587 (not res!273791)) b!458146))

(assert (= (and b!458146 res!273792) b!458147))

(assert (=> d!74587 m!441501))

(declare-fun m!441509 () Bool)

(assert (=> b!458147 m!441509))

(assert (=> b!458070 d!74587))

(declare-fun b!458156 () Bool)

(declare-fun e!267488 () Bool)

(declare-fun call!30114 () Bool)

(assert (=> b!458156 (= e!267488 call!30114)))

(declare-fun b!458157 () Bool)

(declare-fun e!267489 () Bool)

(assert (=> b!458157 (= e!267488 e!267489)))

(declare-fun lt!207282 () (_ BitVec 64))

(assert (=> b!458157 (= lt!207282 (select (arr!13650 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!207283 () Unit!13259)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28421 (_ BitVec 64) (_ BitVec 32)) Unit!13259)

(assert (=> b!458157 (= lt!207283 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!207282 #b00000000000000000000000000000000))))

(assert (=> b!458157 (arrayContainsKey!0 _keys!709 lt!207282 #b00000000000000000000000000000000)))

(declare-fun lt!207281 () Unit!13259)

(assert (=> b!458157 (= lt!207281 lt!207283)))

(declare-fun res!273797 () Bool)

(declare-datatypes ((SeekEntryResult!3522 0))(
  ( (MissingZero!3522 (index!16267 (_ BitVec 32))) (Found!3522 (index!16268 (_ BitVec 32))) (Intermediate!3522 (undefined!4334 Bool) (index!16269 (_ BitVec 32)) (x!42762 (_ BitVec 32))) (Undefined!3522) (MissingVacant!3522 (index!16270 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28421 (_ BitVec 32)) SeekEntryResult!3522)

(assert (=> b!458157 (= res!273797 (= (seekEntryOrOpen!0 (select (arr!13650 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3522 #b00000000000000000000000000000000)))))

(assert (=> b!458157 (=> (not res!273797) (not e!267489))))

(declare-fun bm!30111 () Bool)

(assert (=> bm!30111 (= call!30114 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!458159 () Bool)

(declare-fun e!267490 () Bool)

(assert (=> b!458159 (= e!267490 e!267488)))

(declare-fun c!56308 () Bool)

(assert (=> b!458159 (= c!56308 (validKeyInArray!0 (select (arr!13650 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!74589 () Bool)

(declare-fun res!273798 () Bool)

(assert (=> d!74589 (=> res!273798 e!267490)))

(assert (=> d!74589 (= res!273798 (bvsge #b00000000000000000000000000000000 (size!14002 _keys!709)))))

(assert (=> d!74589 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!267490)))

(declare-fun b!458158 () Bool)

(assert (=> b!458158 (= e!267489 call!30114)))

(assert (= (and d!74589 (not res!273798)) b!458159))

(assert (= (and b!458159 c!56308) b!458157))

(assert (= (and b!458159 (not c!56308)) b!458156))

(assert (= (and b!458157 res!273797) b!458158))

(assert (= (or b!458158 b!458156) bm!30111))

(assert (=> b!458157 m!441501))

(declare-fun m!441511 () Bool)

(assert (=> b!458157 m!441511))

(declare-fun m!441513 () Bool)

(assert (=> b!458157 m!441513))

(assert (=> b!458157 m!441501))

(declare-fun m!441515 () Bool)

(assert (=> b!458157 m!441515))

(declare-fun m!441517 () Bool)

(assert (=> bm!30111 m!441517))

(assert (=> b!458159 m!441501))

(assert (=> b!458159 m!441501))

(assert (=> b!458159 m!441503))

(assert (=> b!458059 d!74589))

(declare-fun d!74591 () Bool)

(assert (=> d!74591 (= (array_inv!9874 _values!549) (bvsge (size!14003 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!41084 d!74591))

(declare-fun d!74593 () Bool)

(assert (=> d!74593 (= (array_inv!9875 _keys!709) (bvsge (size!14002 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!41084 d!74593))

(declare-fun b!458184 () Bool)

(declare-fun e!267509 () ListLongMap!7075)

(assert (=> b!458184 (= e!267509 (ListLongMap!7076 Nil!8249))))

(declare-fun b!458185 () Bool)

(assert (=> b!458185 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14002 lt!207248)))))

(assert (=> b!458185 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14003 lt!207245)))))

(declare-fun e!267506 () Bool)

(declare-fun lt!207298 () ListLongMap!7075)

(declare-fun apply!315 (ListLongMap!7075 (_ BitVec 64)) V!17541)

(assert (=> b!458185 (= e!267506 (= (apply!315 lt!207298 (select (arr!13650 lt!207248) from!863)) (get!6736 (select (arr!13651 lt!207245) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!458186 () Bool)

(declare-fun e!267511 () ListLongMap!7075)

(declare-fun call!30117 () ListLongMap!7075)

(assert (=> b!458186 (= e!267511 call!30117)))

(declare-fun b!458187 () Bool)

(declare-fun e!267507 () Bool)

(declare-fun e!267505 () Bool)

(assert (=> b!458187 (= e!267507 e!267505)))

(declare-fun c!56320 () Bool)

(declare-fun e!267510 () Bool)

(assert (=> b!458187 (= c!56320 e!267510)))

(declare-fun res!273808 () Bool)

(assert (=> b!458187 (=> (not res!273808) (not e!267510))))

(assert (=> b!458187 (= res!273808 (bvslt from!863 (size!14002 lt!207248)))))

(declare-fun b!458188 () Bool)

(declare-fun e!267508 () Bool)

(assert (=> b!458188 (= e!267508 (= lt!207298 (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458189 () Bool)

(declare-fun lt!207302 () Unit!13259)

(declare-fun lt!207299 () Unit!13259)

(assert (=> b!458189 (= lt!207302 lt!207299)))

(declare-fun lt!207301 () (_ BitVec 64))

(declare-fun lt!207303 () V!17541)

(declare-fun lt!207304 () ListLongMap!7075)

(declare-fun lt!207300 () (_ BitVec 64))

(declare-fun contains!2506 (ListLongMap!7075 (_ BitVec 64)) Bool)

(assert (=> b!458189 (not (contains!2506 (+!1573 lt!207304 (tuple2!8149 lt!207301 lt!207303)) lt!207300))))

(declare-fun addStillNotContains!150 (ListLongMap!7075 (_ BitVec 64) V!17541 (_ BitVec 64)) Unit!13259)

(assert (=> b!458189 (= lt!207299 (addStillNotContains!150 lt!207304 lt!207301 lt!207303 lt!207300))))

(assert (=> b!458189 (= lt!207300 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458189 (= lt!207303 (get!6736 (select (arr!13651 lt!207245) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458189 (= lt!207301 (select (arr!13650 lt!207248) from!863))))

(assert (=> b!458189 (= lt!207304 call!30117)))

(assert (=> b!458189 (= e!267511 (+!1573 call!30117 (tuple2!8149 (select (arr!13650 lt!207248) from!863) (get!6736 (select (arr!13651 lt!207245) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458190 () Bool)

(declare-fun res!273810 () Bool)

(assert (=> b!458190 (=> (not res!273810) (not e!267507))))

(assert (=> b!458190 (= res!273810 (not (contains!2506 lt!207298 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458191 () Bool)

(assert (=> b!458191 (= e!267510 (validKeyInArray!0 (select (arr!13650 lt!207248) from!863)))))

(assert (=> b!458191 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!458192 () Bool)

(assert (=> b!458192 (= e!267505 e!267508)))

(declare-fun c!56318 () Bool)

(assert (=> b!458192 (= c!56318 (bvslt from!863 (size!14002 lt!207248)))))

(declare-fun d!74595 () Bool)

(assert (=> d!74595 e!267507))

(declare-fun res!273807 () Bool)

(assert (=> d!74595 (=> (not res!273807) (not e!267507))))

(assert (=> d!74595 (= res!273807 (not (contains!2506 lt!207298 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74595 (= lt!207298 e!267509)))

(declare-fun c!56317 () Bool)

(assert (=> d!74595 (= c!56317 (bvsge from!863 (size!14002 lt!207248)))))

(assert (=> d!74595 (validMask!0 mask!1025)))

(assert (=> d!74595 (= (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!207298)))

(declare-fun b!458193 () Bool)

(assert (=> b!458193 (= e!267509 e!267511)))

(declare-fun c!56319 () Bool)

(assert (=> b!458193 (= c!56319 (validKeyInArray!0 (select (arr!13650 lt!207248) from!863)))))

(declare-fun b!458194 () Bool)

(declare-fun isEmpty!567 (ListLongMap!7075) Bool)

(assert (=> b!458194 (= e!267508 (isEmpty!567 lt!207298))))

(declare-fun bm!30114 () Bool)

(assert (=> bm!30114 (= call!30117 (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458195 () Bool)

(assert (=> b!458195 (= e!267505 e!267506)))

(assert (=> b!458195 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14002 lt!207248)))))

(declare-fun res!273809 () Bool)

(assert (=> b!458195 (= res!273809 (contains!2506 lt!207298 (select (arr!13650 lt!207248) from!863)))))

(assert (=> b!458195 (=> (not res!273809) (not e!267506))))

(assert (= (and d!74595 c!56317) b!458184))

(assert (= (and d!74595 (not c!56317)) b!458193))

(assert (= (and b!458193 c!56319) b!458189))

(assert (= (and b!458193 (not c!56319)) b!458186))

(assert (= (or b!458189 b!458186) bm!30114))

(assert (= (and d!74595 res!273807) b!458190))

(assert (= (and b!458190 res!273810) b!458187))

(assert (= (and b!458187 res!273808) b!458191))

(assert (= (and b!458187 c!56320) b!458195))

(assert (= (and b!458187 (not c!56320)) b!458192))

(assert (= (and b!458195 res!273809) b!458185))

(assert (= (and b!458192 c!56318) b!458188))

(assert (= (and b!458192 (not c!56318)) b!458194))

(declare-fun b_lambda!9791 () Bool)

(assert (=> (not b_lambda!9791) (not b!458185)))

(assert (=> b!458185 t!14126))

(declare-fun b_and!19211 () Bool)

(assert (= b_and!19205 (and (=> t!14126 result!7199) b_and!19211)))

(declare-fun b_lambda!9793 () Bool)

(assert (=> (not b_lambda!9793) (not b!458189)))

(assert (=> b!458189 t!14126))

(declare-fun b_and!19213 () Bool)

(assert (= b_and!19211 (and (=> t!14126 result!7199) b_and!19213)))

(declare-fun m!441519 () Bool)

(assert (=> bm!30114 m!441519))

(declare-fun m!441521 () Bool)

(assert (=> b!458194 m!441521))

(declare-fun m!441523 () Bool)

(assert (=> b!458190 m!441523))

(declare-fun m!441525 () Bool)

(assert (=> b!458189 m!441525))

(declare-fun m!441527 () Bool)

(assert (=> b!458189 m!441527))

(assert (=> b!458189 m!441433))

(declare-fun m!441529 () Bool)

(assert (=> b!458189 m!441529))

(assert (=> b!458189 m!441529))

(assert (=> b!458189 m!441433))

(declare-fun m!441531 () Bool)

(assert (=> b!458189 m!441531))

(assert (=> b!458189 m!441527))

(declare-fun m!441533 () Bool)

(assert (=> b!458189 m!441533))

(declare-fun m!441535 () Bool)

(assert (=> b!458189 m!441535))

(declare-fun m!441537 () Bool)

(assert (=> b!458189 m!441537))

(assert (=> b!458193 m!441537))

(assert (=> b!458193 m!441537))

(declare-fun m!441539 () Bool)

(assert (=> b!458193 m!441539))

(assert (=> b!458195 m!441537))

(assert (=> b!458195 m!441537))

(declare-fun m!441541 () Bool)

(assert (=> b!458195 m!441541))

(assert (=> b!458191 m!441537))

(assert (=> b!458191 m!441537))

(assert (=> b!458191 m!441539))

(assert (=> b!458185 m!441433))

(assert (=> b!458185 m!441529))

(assert (=> b!458185 m!441529))

(assert (=> b!458185 m!441433))

(assert (=> b!458185 m!441531))

(assert (=> b!458185 m!441537))

(assert (=> b!458185 m!441537))

(declare-fun m!441543 () Bool)

(assert (=> b!458185 m!441543))

(assert (=> b!458188 m!441519))

(declare-fun m!441545 () Bool)

(assert (=> d!74595 m!441545))

(assert (=> d!74595 m!441413))

(assert (=> b!458063 d!74595))

(declare-fun b!458196 () Bool)

(declare-fun e!267516 () ListLongMap!7075)

(assert (=> b!458196 (= e!267516 (ListLongMap!7076 Nil!8249))))

(declare-fun b!458197 () Bool)

(assert (=> b!458197 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14002 _keys!709)))))

(assert (=> b!458197 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14003 _values!549)))))

(declare-fun e!267513 () Bool)

(declare-fun lt!207305 () ListLongMap!7075)

(assert (=> b!458197 (= e!267513 (= (apply!315 lt!207305 (select (arr!13650 _keys!709) from!863)) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!458198 () Bool)

(declare-fun e!267518 () ListLongMap!7075)

(declare-fun call!30118 () ListLongMap!7075)

(assert (=> b!458198 (= e!267518 call!30118)))

(declare-fun b!458199 () Bool)

(declare-fun e!267514 () Bool)

(declare-fun e!267512 () Bool)

(assert (=> b!458199 (= e!267514 e!267512)))

(declare-fun c!56324 () Bool)

(declare-fun e!267517 () Bool)

(assert (=> b!458199 (= c!56324 e!267517)))

(declare-fun res!273812 () Bool)

(assert (=> b!458199 (=> (not res!273812) (not e!267517))))

(assert (=> b!458199 (= res!273812 (bvslt from!863 (size!14002 _keys!709)))))

(declare-fun e!267515 () Bool)

(declare-fun b!458200 () Bool)

(assert (=> b!458200 (= e!267515 (= lt!207305 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458201 () Bool)

(declare-fun lt!207309 () Unit!13259)

(declare-fun lt!207306 () Unit!13259)

(assert (=> b!458201 (= lt!207309 lt!207306)))

(declare-fun lt!207308 () (_ BitVec 64))

(declare-fun lt!207307 () (_ BitVec 64))

(declare-fun lt!207310 () V!17541)

(declare-fun lt!207311 () ListLongMap!7075)

(assert (=> b!458201 (not (contains!2506 (+!1573 lt!207311 (tuple2!8149 lt!207308 lt!207310)) lt!207307))))

(assert (=> b!458201 (= lt!207306 (addStillNotContains!150 lt!207311 lt!207308 lt!207310 lt!207307))))

(assert (=> b!458201 (= lt!207307 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458201 (= lt!207310 (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458201 (= lt!207308 (select (arr!13650 _keys!709) from!863))))

(assert (=> b!458201 (= lt!207311 call!30118)))

(assert (=> b!458201 (= e!267518 (+!1573 call!30118 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458202 () Bool)

(declare-fun res!273814 () Bool)

(assert (=> b!458202 (=> (not res!273814) (not e!267514))))

(assert (=> b!458202 (= res!273814 (not (contains!2506 lt!207305 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458203 () Bool)

(assert (=> b!458203 (= e!267517 (validKeyInArray!0 (select (arr!13650 _keys!709) from!863)))))

(assert (=> b!458203 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!458204 () Bool)

(assert (=> b!458204 (= e!267512 e!267515)))

(declare-fun c!56322 () Bool)

(assert (=> b!458204 (= c!56322 (bvslt from!863 (size!14002 _keys!709)))))

(declare-fun d!74597 () Bool)

(assert (=> d!74597 e!267514))

(declare-fun res!273811 () Bool)

(assert (=> d!74597 (=> (not res!273811) (not e!267514))))

(assert (=> d!74597 (= res!273811 (not (contains!2506 lt!207305 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74597 (= lt!207305 e!267516)))

(declare-fun c!56321 () Bool)

(assert (=> d!74597 (= c!56321 (bvsge from!863 (size!14002 _keys!709)))))

(assert (=> d!74597 (validMask!0 mask!1025)))

(assert (=> d!74597 (= (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!207305)))

(declare-fun b!458205 () Bool)

(assert (=> b!458205 (= e!267516 e!267518)))

(declare-fun c!56323 () Bool)

(assert (=> b!458205 (= c!56323 (validKeyInArray!0 (select (arr!13650 _keys!709) from!863)))))

(declare-fun b!458206 () Bool)

(assert (=> b!458206 (= e!267515 (isEmpty!567 lt!207305))))

(declare-fun bm!30115 () Bool)

(assert (=> bm!30115 (= call!30118 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458207 () Bool)

(assert (=> b!458207 (= e!267512 e!267513)))

(assert (=> b!458207 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14002 _keys!709)))))

(declare-fun res!273813 () Bool)

(assert (=> b!458207 (= res!273813 (contains!2506 lt!207305 (select (arr!13650 _keys!709) from!863)))))

(assert (=> b!458207 (=> (not res!273813) (not e!267513))))

(assert (= (and d!74597 c!56321) b!458196))

(assert (= (and d!74597 (not c!56321)) b!458205))

(assert (= (and b!458205 c!56323) b!458201))

(assert (= (and b!458205 (not c!56323)) b!458198))

(assert (= (or b!458201 b!458198) bm!30115))

(assert (= (and d!74597 res!273811) b!458202))

(assert (= (and b!458202 res!273814) b!458199))

(assert (= (and b!458199 res!273812) b!458203))

(assert (= (and b!458199 c!56324) b!458207))

(assert (= (and b!458199 (not c!56324)) b!458204))

(assert (= (and b!458207 res!273813) b!458197))

(assert (= (and b!458204 c!56322) b!458200))

(assert (= (and b!458204 (not c!56322)) b!458206))

(declare-fun b_lambda!9795 () Bool)

(assert (=> (not b_lambda!9795) (not b!458197)))

(assert (=> b!458197 t!14126))

(declare-fun b_and!19215 () Bool)

(assert (= b_and!19213 (and (=> t!14126 result!7199) b_and!19215)))

(declare-fun b_lambda!9797 () Bool)

(assert (=> (not b_lambda!9797) (not b!458201)))

(assert (=> b!458201 t!14126))

(declare-fun b_and!19217 () Bool)

(assert (= b_and!19215 (and (=> t!14126 result!7199) b_and!19217)))

(declare-fun m!441547 () Bool)

(assert (=> bm!30115 m!441547))

(declare-fun m!441549 () Bool)

(assert (=> b!458206 m!441549))

(declare-fun m!441551 () Bool)

(assert (=> b!458202 m!441551))

(declare-fun m!441553 () Bool)

(assert (=> b!458201 m!441553))

(declare-fun m!441555 () Bool)

(assert (=> b!458201 m!441555))

(assert (=> b!458201 m!441433))

(assert (=> b!458201 m!441435))

(assert (=> b!458201 m!441435))

(assert (=> b!458201 m!441433))

(assert (=> b!458201 m!441439))

(assert (=> b!458201 m!441555))

(declare-fun m!441557 () Bool)

(assert (=> b!458201 m!441557))

(declare-fun m!441559 () Bool)

(assert (=> b!458201 m!441559))

(assert (=> b!458201 m!441419))

(assert (=> b!458205 m!441419))

(assert (=> b!458205 m!441419))

(assert (=> b!458205 m!441427))

(assert (=> b!458207 m!441419))

(assert (=> b!458207 m!441419))

(declare-fun m!441561 () Bool)

(assert (=> b!458207 m!441561))

(assert (=> b!458203 m!441419))

(assert (=> b!458203 m!441419))

(assert (=> b!458203 m!441427))

(assert (=> b!458197 m!441433))

(assert (=> b!458197 m!441435))

(assert (=> b!458197 m!441435))

(assert (=> b!458197 m!441433))

(assert (=> b!458197 m!441439))

(assert (=> b!458197 m!441419))

(assert (=> b!458197 m!441419))

(declare-fun m!441563 () Bool)

(assert (=> b!458197 m!441563))

(assert (=> b!458200 m!441547))

(declare-fun m!441565 () Bool)

(assert (=> d!74597 m!441565))

(assert (=> d!74597 m!441413))

(assert (=> b!458063 d!74597))

(declare-fun b!458208 () Bool)

(declare-fun e!267523 () ListLongMap!7075)

(assert (=> b!458208 (= e!267523 (ListLongMap!7076 Nil!8249))))

(declare-fun b!458209 () Bool)

(assert (=> b!458209 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 _keys!709)))))

(assert (=> b!458209 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14003 _values!549)))))

(declare-fun e!267520 () Bool)

(declare-fun lt!207312 () ListLongMap!7075)

(assert (=> b!458209 (= e!267520 (= (apply!315 lt!207312 (select (arr!13650 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))) (get!6736 (select (arr!13651 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!458210 () Bool)

(declare-fun e!267525 () ListLongMap!7075)

(declare-fun call!30119 () ListLongMap!7075)

(assert (=> b!458210 (= e!267525 call!30119)))

(declare-fun b!458211 () Bool)

(declare-fun e!267521 () Bool)

(declare-fun e!267519 () Bool)

(assert (=> b!458211 (= e!267521 e!267519)))

(declare-fun c!56328 () Bool)

(declare-fun e!267524 () Bool)

(assert (=> b!458211 (= c!56328 e!267524)))

(declare-fun res!273816 () Bool)

(assert (=> b!458211 (=> (not res!273816) (not e!267524))))

(assert (=> b!458211 (= res!273816 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 _keys!709)))))

(declare-fun e!267522 () Bool)

(declare-fun b!458212 () Bool)

(assert (=> b!458212 (= e!267522 (= lt!207312 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458213 () Bool)

(declare-fun lt!207316 () Unit!13259)

(declare-fun lt!207313 () Unit!13259)

(assert (=> b!458213 (= lt!207316 lt!207313)))

(declare-fun lt!207318 () ListLongMap!7075)

(declare-fun lt!207315 () (_ BitVec 64))

(declare-fun lt!207317 () V!17541)

(declare-fun lt!207314 () (_ BitVec 64))

(assert (=> b!458213 (not (contains!2506 (+!1573 lt!207318 (tuple2!8149 lt!207315 lt!207317)) lt!207314))))

(assert (=> b!458213 (= lt!207313 (addStillNotContains!150 lt!207318 lt!207315 lt!207317 lt!207314))))

(assert (=> b!458213 (= lt!207314 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458213 (= lt!207317 (get!6736 (select (arr!13651 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458213 (= lt!207315 (select (arr!13650 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!458213 (= lt!207318 call!30119)))

(assert (=> b!458213 (= e!267525 (+!1573 call!30119 (tuple2!8149 (select (arr!13650 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (get!6736 (select (arr!13651 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458214 () Bool)

(declare-fun res!273818 () Bool)

(assert (=> b!458214 (=> (not res!273818) (not e!267521))))

(assert (=> b!458214 (= res!273818 (not (contains!2506 lt!207312 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458215 () Bool)

(assert (=> b!458215 (= e!267524 (validKeyInArray!0 (select (arr!13650 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458215 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!458216 () Bool)

(assert (=> b!458216 (= e!267519 e!267522)))

(declare-fun c!56326 () Bool)

(assert (=> b!458216 (= c!56326 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 _keys!709)))))

(declare-fun d!74599 () Bool)

(assert (=> d!74599 e!267521))

(declare-fun res!273815 () Bool)

(assert (=> d!74599 (=> (not res!273815) (not e!267521))))

(assert (=> d!74599 (= res!273815 (not (contains!2506 lt!207312 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74599 (= lt!207312 e!267523)))

(declare-fun c!56325 () Bool)

(assert (=> d!74599 (= c!56325 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14002 _keys!709)))))

(assert (=> d!74599 (validMask!0 mask!1025)))

(assert (=> d!74599 (= (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!207312)))

(declare-fun b!458217 () Bool)

(assert (=> b!458217 (= e!267523 e!267525)))

(declare-fun c!56327 () Bool)

(assert (=> b!458217 (= c!56327 (validKeyInArray!0 (select (arr!13650 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!458218 () Bool)

(assert (=> b!458218 (= e!267522 (isEmpty!567 lt!207312))))

(declare-fun bm!30116 () Bool)

(assert (=> bm!30116 (= call!30119 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458219 () Bool)

(assert (=> b!458219 (= e!267519 e!267520)))

(assert (=> b!458219 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 _keys!709)))))

(declare-fun res!273817 () Bool)

(assert (=> b!458219 (= res!273817 (contains!2506 lt!207312 (select (arr!13650 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458219 (=> (not res!273817) (not e!267520))))

(assert (= (and d!74599 c!56325) b!458208))

(assert (= (and d!74599 (not c!56325)) b!458217))

(assert (= (and b!458217 c!56327) b!458213))

(assert (= (and b!458217 (not c!56327)) b!458210))

(assert (= (or b!458213 b!458210) bm!30116))

(assert (= (and d!74599 res!273815) b!458214))

(assert (= (and b!458214 res!273818) b!458211))

(assert (= (and b!458211 res!273816) b!458215))

(assert (= (and b!458211 c!56328) b!458219))

(assert (= (and b!458211 (not c!56328)) b!458216))

(assert (= (and b!458219 res!273817) b!458209))

(assert (= (and b!458216 c!56326) b!458212))

(assert (= (and b!458216 (not c!56326)) b!458218))

(declare-fun b_lambda!9799 () Bool)

(assert (=> (not b_lambda!9799) (not b!458209)))

(assert (=> b!458209 t!14126))

(declare-fun b_and!19219 () Bool)

(assert (= b_and!19217 (and (=> t!14126 result!7199) b_and!19219)))

(declare-fun b_lambda!9801 () Bool)

(assert (=> (not b_lambda!9801) (not b!458213)))

(assert (=> b!458213 t!14126))

(declare-fun b_and!19221 () Bool)

(assert (= b_and!19219 (and (=> t!14126 result!7199) b_and!19221)))

(declare-fun m!441567 () Bool)

(assert (=> bm!30116 m!441567))

(declare-fun m!441569 () Bool)

(assert (=> b!458218 m!441569))

(declare-fun m!441571 () Bool)

(assert (=> b!458214 m!441571))

(declare-fun m!441573 () Bool)

(assert (=> b!458213 m!441573))

(declare-fun m!441575 () Bool)

(assert (=> b!458213 m!441575))

(assert (=> b!458213 m!441433))

(declare-fun m!441577 () Bool)

(assert (=> b!458213 m!441577))

(assert (=> b!458213 m!441577))

(assert (=> b!458213 m!441433))

(declare-fun m!441579 () Bool)

(assert (=> b!458213 m!441579))

(assert (=> b!458213 m!441575))

(declare-fun m!441581 () Bool)

(assert (=> b!458213 m!441581))

(declare-fun m!441583 () Bool)

(assert (=> b!458213 m!441583))

(declare-fun m!441585 () Bool)

(assert (=> b!458213 m!441585))

(assert (=> b!458217 m!441585))

(assert (=> b!458217 m!441585))

(declare-fun m!441587 () Bool)

(assert (=> b!458217 m!441587))

(assert (=> b!458219 m!441585))

(assert (=> b!458219 m!441585))

(declare-fun m!441589 () Bool)

(assert (=> b!458219 m!441589))

(assert (=> b!458215 m!441585))

(assert (=> b!458215 m!441585))

(assert (=> b!458215 m!441587))

(assert (=> b!458209 m!441433))

(assert (=> b!458209 m!441577))

(assert (=> b!458209 m!441577))

(assert (=> b!458209 m!441433))

(assert (=> b!458209 m!441579))

(assert (=> b!458209 m!441585))

(assert (=> b!458209 m!441585))

(declare-fun m!441591 () Bool)

(assert (=> b!458209 m!441591))

(assert (=> b!458212 m!441567))

(declare-fun m!441593 () Bool)

(assert (=> d!74599 m!441593))

(assert (=> d!74599 m!441413))

(assert (=> b!458062 d!74599))

(declare-fun d!74601 () Bool)

(declare-fun e!267528 () Bool)

(assert (=> d!74601 e!267528))

(declare-fun res!273823 () Bool)

(assert (=> d!74601 (=> (not res!273823) (not e!267528))))

(declare-fun lt!207330 () ListLongMap!7075)

(assert (=> d!74601 (= res!273823 (contains!2506 lt!207330 (_1!4084 (tuple2!8149 k0!794 v!412))))))

(declare-fun lt!207327 () List!8252)

(assert (=> d!74601 (= lt!207330 (ListLongMap!7076 lt!207327))))

(declare-fun lt!207328 () Unit!13259)

(declare-fun lt!207329 () Unit!13259)

(assert (=> d!74601 (= lt!207328 lt!207329)))

(declare-datatypes ((Option!377 0))(
  ( (Some!376 (v!8479 V!17541)) (None!375) )
))
(declare-fun getValueByKey!371 (List!8252 (_ BitVec 64)) Option!377)

(assert (=> d!74601 (= (getValueByKey!371 lt!207327 (_1!4084 (tuple2!8149 k0!794 v!412))) (Some!376 (_2!4084 (tuple2!8149 k0!794 v!412))))))

(declare-fun lemmaContainsTupThenGetReturnValue!195 (List!8252 (_ BitVec 64) V!17541) Unit!13259)

(assert (=> d!74601 (= lt!207329 (lemmaContainsTupThenGetReturnValue!195 lt!207327 (_1!4084 (tuple2!8149 k0!794 v!412)) (_2!4084 (tuple2!8149 k0!794 v!412))))))

(declare-fun insertStrictlySorted!197 (List!8252 (_ BitVec 64) V!17541) List!8252)

(assert (=> d!74601 (= lt!207327 (insertStrictlySorted!197 (toList!3553 lt!207244) (_1!4084 (tuple2!8149 k0!794 v!412)) (_2!4084 (tuple2!8149 k0!794 v!412))))))

(assert (=> d!74601 (= (+!1573 lt!207244 (tuple2!8149 k0!794 v!412)) lt!207330)))

(declare-fun b!458224 () Bool)

(declare-fun res!273824 () Bool)

(assert (=> b!458224 (=> (not res!273824) (not e!267528))))

(assert (=> b!458224 (= res!273824 (= (getValueByKey!371 (toList!3553 lt!207330) (_1!4084 (tuple2!8149 k0!794 v!412))) (Some!376 (_2!4084 (tuple2!8149 k0!794 v!412)))))))

(declare-fun b!458225 () Bool)

(declare-fun contains!2507 (List!8252 tuple2!8148) Bool)

(assert (=> b!458225 (= e!267528 (contains!2507 (toList!3553 lt!207330) (tuple2!8149 k0!794 v!412)))))

(assert (= (and d!74601 res!273823) b!458224))

(assert (= (and b!458224 res!273824) b!458225))

(declare-fun m!441595 () Bool)

(assert (=> d!74601 m!441595))

(declare-fun m!441597 () Bool)

(assert (=> d!74601 m!441597))

(declare-fun m!441599 () Bool)

(assert (=> d!74601 m!441599))

(declare-fun m!441601 () Bool)

(assert (=> d!74601 m!441601))

(declare-fun m!441603 () Bool)

(assert (=> b!458224 m!441603))

(declare-fun m!441605 () Bool)

(assert (=> b!458225 m!441605))

(assert (=> b!458062 d!74601))

(declare-fun d!74603 () Bool)

(assert (=> d!74603 (= (validKeyInArray!0 (select (arr!13650 _keys!709) from!863)) (and (not (= (select (arr!13650 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13650 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!458062 d!74603))

(declare-fun b!458226 () Bool)

(declare-fun e!267533 () ListLongMap!7075)

(assert (=> b!458226 (= e!267533 (ListLongMap!7076 Nil!8249))))

(declare-fun b!458227 () Bool)

(assert (=> b!458227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 lt!207248)))))

(assert (=> b!458227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14003 lt!207245)))))

(declare-fun lt!207331 () ListLongMap!7075)

(declare-fun e!267530 () Bool)

(assert (=> b!458227 (= e!267530 (= (apply!315 lt!207331 (select (arr!13650 lt!207248) (bvadd #b00000000000000000000000000000001 from!863))) (get!6736 (select (arr!13651 lt!207245) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!458228 () Bool)

(declare-fun e!267535 () ListLongMap!7075)

(declare-fun call!30120 () ListLongMap!7075)

(assert (=> b!458228 (= e!267535 call!30120)))

(declare-fun b!458229 () Bool)

(declare-fun e!267531 () Bool)

(declare-fun e!267529 () Bool)

(assert (=> b!458229 (= e!267531 e!267529)))

(declare-fun c!56332 () Bool)

(declare-fun e!267534 () Bool)

(assert (=> b!458229 (= c!56332 e!267534)))

(declare-fun res!273826 () Bool)

(assert (=> b!458229 (=> (not res!273826) (not e!267534))))

(assert (=> b!458229 (= res!273826 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 lt!207248)))))

(declare-fun b!458230 () Bool)

(declare-fun e!267532 () Bool)

(assert (=> b!458230 (= e!267532 (= lt!207331 (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!458231 () Bool)

(declare-fun lt!207335 () Unit!13259)

(declare-fun lt!207332 () Unit!13259)

(assert (=> b!458231 (= lt!207335 lt!207332)))

(declare-fun lt!207337 () ListLongMap!7075)

(declare-fun lt!207333 () (_ BitVec 64))

(declare-fun lt!207336 () V!17541)

(declare-fun lt!207334 () (_ BitVec 64))

(assert (=> b!458231 (not (contains!2506 (+!1573 lt!207337 (tuple2!8149 lt!207334 lt!207336)) lt!207333))))

(assert (=> b!458231 (= lt!207332 (addStillNotContains!150 lt!207337 lt!207334 lt!207336 lt!207333))))

(assert (=> b!458231 (= lt!207333 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!458231 (= lt!207336 (get!6736 (select (arr!13651 lt!207245) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!458231 (= lt!207334 (select (arr!13650 lt!207248) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!458231 (= lt!207337 call!30120)))

(assert (=> b!458231 (= e!267535 (+!1573 call!30120 (tuple2!8149 (select (arr!13650 lt!207248) (bvadd #b00000000000000000000000000000001 from!863)) (get!6736 (select (arr!13651 lt!207245) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458232 () Bool)

(declare-fun res!273828 () Bool)

(assert (=> b!458232 (=> (not res!273828) (not e!267531))))

(assert (=> b!458232 (= res!273828 (not (contains!2506 lt!207331 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458233 () Bool)

(assert (=> b!458233 (= e!267534 (validKeyInArray!0 (select (arr!13650 lt!207248) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458233 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!458234 () Bool)

(assert (=> b!458234 (= e!267529 e!267532)))

(declare-fun c!56330 () Bool)

(assert (=> b!458234 (= c!56330 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 lt!207248)))))

(declare-fun d!74605 () Bool)

(assert (=> d!74605 e!267531))

(declare-fun res!273825 () Bool)

(assert (=> d!74605 (=> (not res!273825) (not e!267531))))

(assert (=> d!74605 (= res!273825 (not (contains!2506 lt!207331 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74605 (= lt!207331 e!267533)))

(declare-fun c!56329 () Bool)

(assert (=> d!74605 (= c!56329 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14002 lt!207248)))))

(assert (=> d!74605 (validMask!0 mask!1025)))

(assert (=> d!74605 (= (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!207331)))

(declare-fun b!458235 () Bool)

(assert (=> b!458235 (= e!267533 e!267535)))

(declare-fun c!56331 () Bool)

(assert (=> b!458235 (= c!56331 (validKeyInArray!0 (select (arr!13650 lt!207248) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!458236 () Bool)

(assert (=> b!458236 (= e!267532 (isEmpty!567 lt!207331))))

(declare-fun bm!30117 () Bool)

(assert (=> bm!30117 (= call!30120 (getCurrentListMapNoExtraKeys!1725 lt!207248 lt!207245 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!458237 () Bool)

(assert (=> b!458237 (= e!267529 e!267530)))

(assert (=> b!458237 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14002 lt!207248)))))

(declare-fun res!273827 () Bool)

(assert (=> b!458237 (= res!273827 (contains!2506 lt!207331 (select (arr!13650 lt!207248) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!458237 (=> (not res!273827) (not e!267530))))

(assert (= (and d!74605 c!56329) b!458226))

(assert (= (and d!74605 (not c!56329)) b!458235))

(assert (= (and b!458235 c!56331) b!458231))

(assert (= (and b!458235 (not c!56331)) b!458228))

(assert (= (or b!458231 b!458228) bm!30117))

(assert (= (and d!74605 res!273825) b!458232))

(assert (= (and b!458232 res!273828) b!458229))

(assert (= (and b!458229 res!273826) b!458233))

(assert (= (and b!458229 c!56332) b!458237))

(assert (= (and b!458229 (not c!56332)) b!458234))

(assert (= (and b!458237 res!273827) b!458227))

(assert (= (and b!458234 c!56330) b!458230))

(assert (= (and b!458234 (not c!56330)) b!458236))

(declare-fun b_lambda!9803 () Bool)

(assert (=> (not b_lambda!9803) (not b!458227)))

(assert (=> b!458227 t!14126))

(declare-fun b_and!19223 () Bool)

(assert (= b_and!19221 (and (=> t!14126 result!7199) b_and!19223)))

(declare-fun b_lambda!9805 () Bool)

(assert (=> (not b_lambda!9805) (not b!458231)))

(assert (=> b!458231 t!14126))

(declare-fun b_and!19225 () Bool)

(assert (= b_and!19223 (and (=> t!14126 result!7199) b_and!19225)))

(declare-fun m!441607 () Bool)

(assert (=> bm!30117 m!441607))

(declare-fun m!441609 () Bool)

(assert (=> b!458236 m!441609))

(declare-fun m!441611 () Bool)

(assert (=> b!458232 m!441611))

(declare-fun m!441613 () Bool)

(assert (=> b!458231 m!441613))

(declare-fun m!441615 () Bool)

(assert (=> b!458231 m!441615))

(assert (=> b!458231 m!441433))

(declare-fun m!441617 () Bool)

(assert (=> b!458231 m!441617))

(assert (=> b!458231 m!441617))

(assert (=> b!458231 m!441433))

(declare-fun m!441619 () Bool)

(assert (=> b!458231 m!441619))

(assert (=> b!458231 m!441615))

(declare-fun m!441621 () Bool)

(assert (=> b!458231 m!441621))

(declare-fun m!441623 () Bool)

(assert (=> b!458231 m!441623))

(declare-fun m!441625 () Bool)

(assert (=> b!458231 m!441625))

(assert (=> b!458235 m!441625))

(assert (=> b!458235 m!441625))

(declare-fun m!441627 () Bool)

(assert (=> b!458235 m!441627))

(assert (=> b!458237 m!441625))

(assert (=> b!458237 m!441625))

(declare-fun m!441629 () Bool)

(assert (=> b!458237 m!441629))

(assert (=> b!458233 m!441625))

(assert (=> b!458233 m!441625))

(assert (=> b!458233 m!441627))

(assert (=> b!458227 m!441433))

(assert (=> b!458227 m!441617))

(assert (=> b!458227 m!441617))

(assert (=> b!458227 m!441433))

(assert (=> b!458227 m!441619))

(assert (=> b!458227 m!441625))

(assert (=> b!458227 m!441625))

(declare-fun m!441631 () Bool)

(assert (=> b!458227 m!441631))

(assert (=> b!458230 m!441607))

(declare-fun m!441633 () Bool)

(assert (=> d!74605 m!441633))

(assert (=> d!74605 m!441413))

(assert (=> b!458062 d!74605))

(declare-fun bm!30122 () Bool)

(declare-fun call!30125 () ListLongMap!7075)

(assert (=> bm!30122 (= call!30125 (getCurrentListMapNoExtraKeys!1725 (array!28422 (store (arr!13650 _keys!709) i!563 k0!794) (size!14002 _keys!709)) (array!28424 (store (arr!13651 _values!549) i!563 (ValueCellFull!5820 v!412)) (size!14003 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun d!74607 () Bool)

(declare-fun e!267541 () Bool)

(assert (=> d!74607 e!267541))

(declare-fun res!273831 () Bool)

(assert (=> d!74607 (=> (not res!273831) (not e!267541))))

(assert (=> d!74607 (= res!273831 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14002 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14003 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14002 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14003 _values!549))))))))

(declare-fun lt!207340 () Unit!13259)

(declare-fun choose!1340 (array!28421 array!28423 (_ BitVec 32) (_ BitVec 32) V!17541 V!17541 (_ BitVec 32) (_ BitVec 64) V!17541 (_ BitVec 32) Int) Unit!13259)

(assert (=> d!74607 (= lt!207340 (choose!1340 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74607 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!14002 _keys!709)))))

(assert (=> d!74607 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!732 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!207340)))

(declare-fun bm!30123 () Bool)

(declare-fun call!30126 () ListLongMap!7075)

(assert (=> bm!30123 (= call!30126 (getCurrentListMapNoExtraKeys!1725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458244 () Bool)

(declare-fun e!267540 () Bool)

(assert (=> b!458244 (= e!267541 e!267540)))

(declare-fun c!56335 () Bool)

(assert (=> b!458244 (= c!56335 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun b!458245 () Bool)

(assert (=> b!458245 (= e!267540 (= call!30125 (+!1573 call!30126 (tuple2!8149 k0!794 v!412))))))

(declare-fun b!458246 () Bool)

(assert (=> b!458246 (= e!267540 (= call!30125 call!30126))))

(assert (= (and d!74607 res!273831) b!458244))

(assert (= (and b!458244 c!56335) b!458245))

(assert (= (and b!458244 (not c!56335)) b!458246))

(assert (= (or b!458245 b!458246) bm!30123))

(assert (= (or b!458245 b!458246) bm!30122))

(assert (=> bm!30122 m!441403))

(assert (=> bm!30122 m!441443))

(declare-fun m!441635 () Bool)

(assert (=> bm!30122 m!441635))

(declare-fun m!441637 () Bool)

(assert (=> d!74607 m!441637))

(assert (=> bm!30123 m!441425))

(declare-fun m!441639 () Bool)

(assert (=> b!458245 m!441639))

(assert (=> b!458062 d!74607))

(declare-fun b!458247 () Bool)

(declare-fun e!267542 () Bool)

(declare-fun call!30127 () Bool)

(assert (=> b!458247 (= e!267542 call!30127)))

(declare-fun b!458248 () Bool)

(declare-fun e!267543 () Bool)

(assert (=> b!458248 (= e!267542 e!267543)))

(declare-fun lt!207342 () (_ BitVec 64))

(assert (=> b!458248 (= lt!207342 (select (arr!13650 lt!207248) #b00000000000000000000000000000000))))

(declare-fun lt!207343 () Unit!13259)

(assert (=> b!458248 (= lt!207343 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!207248 lt!207342 #b00000000000000000000000000000000))))

(assert (=> b!458248 (arrayContainsKey!0 lt!207248 lt!207342 #b00000000000000000000000000000000)))

(declare-fun lt!207341 () Unit!13259)

(assert (=> b!458248 (= lt!207341 lt!207343)))

(declare-fun res!273832 () Bool)

(assert (=> b!458248 (= res!273832 (= (seekEntryOrOpen!0 (select (arr!13650 lt!207248) #b00000000000000000000000000000000) lt!207248 mask!1025) (Found!3522 #b00000000000000000000000000000000)))))

(assert (=> b!458248 (=> (not res!273832) (not e!267543))))

(declare-fun bm!30124 () Bool)

(assert (=> bm!30124 (= call!30127 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!207248 mask!1025))))

(declare-fun b!458250 () Bool)

(declare-fun e!267544 () Bool)

(assert (=> b!458250 (= e!267544 e!267542)))

(declare-fun c!56336 () Bool)

(assert (=> b!458250 (= c!56336 (validKeyInArray!0 (select (arr!13650 lt!207248) #b00000000000000000000000000000000)))))

(declare-fun d!74609 () Bool)

(declare-fun res!273833 () Bool)

(assert (=> d!74609 (=> res!273833 e!267544)))

(assert (=> d!74609 (= res!273833 (bvsge #b00000000000000000000000000000000 (size!14002 lt!207248)))))

(assert (=> d!74609 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207248 mask!1025) e!267544)))

(declare-fun b!458249 () Bool)

(assert (=> b!458249 (= e!267543 call!30127)))

(assert (= (and d!74609 (not res!273833)) b!458250))

(assert (= (and b!458250 c!56336) b!458248))

(assert (= (and b!458250 (not c!56336)) b!458247))

(assert (= (and b!458248 res!273832) b!458249))

(assert (= (or b!458249 b!458247) bm!30124))

(declare-fun m!441641 () Bool)

(assert (=> b!458248 m!441641))

(declare-fun m!441643 () Bool)

(assert (=> b!458248 m!441643))

(declare-fun m!441645 () Bool)

(assert (=> b!458248 m!441645))

(assert (=> b!458248 m!441641))

(declare-fun m!441647 () Bool)

(assert (=> b!458248 m!441647))

(declare-fun m!441649 () Bool)

(assert (=> bm!30124 m!441649))

(assert (=> b!458250 m!441641))

(assert (=> b!458250 m!441641))

(declare-fun m!441651 () Bool)

(assert (=> b!458250 m!441651))

(assert (=> b!458061 d!74609))

(declare-fun d!74611 () Bool)

(assert (=> d!74611 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!458066 d!74611))

(declare-fun b!458251 () Bool)

(declare-fun e!267548 () Bool)

(declare-fun call!30128 () Bool)

(assert (=> b!458251 (= e!267548 call!30128)))

(declare-fun d!74613 () Bool)

(declare-fun res!273835 () Bool)

(declare-fun e!267546 () Bool)

(assert (=> d!74613 (=> res!273835 e!267546)))

(assert (=> d!74613 (= res!273835 (bvsge #b00000000000000000000000000000000 (size!14002 lt!207248)))))

(assert (=> d!74613 (= (arrayNoDuplicates!0 lt!207248 #b00000000000000000000000000000000 Nil!8248) e!267546)))

(declare-fun b!458252 () Bool)

(declare-fun e!267547 () Bool)

(assert (=> b!458252 (= e!267546 e!267547)))

(declare-fun res!273836 () Bool)

(assert (=> b!458252 (=> (not res!273836) (not e!267547))))

(declare-fun e!267545 () Bool)

(assert (=> b!458252 (= res!273836 (not e!267545))))

(declare-fun res!273834 () Bool)

(assert (=> b!458252 (=> (not res!273834) (not e!267545))))

(assert (=> b!458252 (= res!273834 (validKeyInArray!0 (select (arr!13650 lt!207248) #b00000000000000000000000000000000)))))

(declare-fun bm!30125 () Bool)

(declare-fun c!56337 () Bool)

(assert (=> bm!30125 (= call!30128 (arrayNoDuplicates!0 lt!207248 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56337 (Cons!8247 (select (arr!13650 lt!207248) #b00000000000000000000000000000000) Nil!8248) Nil!8248)))))

(declare-fun b!458253 () Bool)

(assert (=> b!458253 (= e!267545 (contains!2505 Nil!8248 (select (arr!13650 lt!207248) #b00000000000000000000000000000000)))))

(declare-fun b!458254 () Bool)

(assert (=> b!458254 (= e!267548 call!30128)))

(declare-fun b!458255 () Bool)

(assert (=> b!458255 (= e!267547 e!267548)))

(assert (=> b!458255 (= c!56337 (validKeyInArray!0 (select (arr!13650 lt!207248) #b00000000000000000000000000000000)))))

(assert (= (and d!74613 (not res!273835)) b!458252))

(assert (= (and b!458252 res!273834) b!458253))

(assert (= (and b!458252 res!273836) b!458255))

(assert (= (and b!458255 c!56337) b!458254))

(assert (= (and b!458255 (not c!56337)) b!458251))

(assert (= (or b!458254 b!458251) bm!30125))

(assert (=> b!458252 m!441641))

(assert (=> b!458252 m!441641))

(assert (=> b!458252 m!441651))

(assert (=> bm!30125 m!441641))

(declare-fun m!441653 () Bool)

(assert (=> bm!30125 m!441653))

(assert (=> b!458253 m!441641))

(assert (=> b!458253 m!441641))

(declare-fun m!441655 () Bool)

(assert (=> b!458253 m!441655))

(assert (=> b!458255 m!441641))

(assert (=> b!458255 m!441641))

(assert (=> b!458255 m!441651))

(assert (=> b!458056 d!74613))

(declare-fun d!74615 () Bool)

(declare-fun e!267549 () Bool)

(assert (=> d!74615 e!267549))

(declare-fun res!273837 () Bool)

(assert (=> d!74615 (=> (not res!273837) (not e!267549))))

(declare-fun lt!207347 () ListLongMap!7075)

(assert (=> d!74615 (= res!273837 (contains!2506 lt!207347 (_1!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!207344 () List!8252)

(assert (=> d!74615 (= lt!207347 (ListLongMap!7076 lt!207344))))

(declare-fun lt!207345 () Unit!13259)

(declare-fun lt!207346 () Unit!13259)

(assert (=> d!74615 (= lt!207345 lt!207346)))

(assert (=> d!74615 (= (getValueByKey!371 lt!207344 (_1!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!376 (_2!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74615 (= lt!207346 (lemmaContainsTupThenGetReturnValue!195 lt!207344 (_1!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74615 (= lt!207344 (insertStrictlySorted!197 (toList!3553 lt!207250) (_1!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74615 (= (+!1573 lt!207250 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!207347)))

(declare-fun b!458256 () Bool)

(declare-fun res!273838 () Bool)

(assert (=> b!458256 (=> (not res!273838) (not e!267549))))

(assert (=> b!458256 (= res!273838 (= (getValueByKey!371 (toList!3553 lt!207347) (_1!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!376 (_2!4084 (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!458257 () Bool)

(assert (=> b!458257 (= e!267549 (contains!2507 (toList!3553 lt!207347) (tuple2!8149 (select (arr!13650 _keys!709) from!863) (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74615 res!273837) b!458256))

(assert (= (and b!458256 res!273838) b!458257))

(declare-fun m!441657 () Bool)

(assert (=> d!74615 m!441657))

(declare-fun m!441659 () Bool)

(assert (=> d!74615 m!441659))

(declare-fun m!441661 () Bool)

(assert (=> d!74615 m!441661))

(declare-fun m!441663 () Bool)

(assert (=> d!74615 m!441663))

(declare-fun m!441665 () Bool)

(assert (=> b!458256 m!441665))

(declare-fun m!441667 () Bool)

(assert (=> b!458257 m!441667))

(assert (=> b!458071 d!74615))

(declare-fun d!74617 () Bool)

(declare-fun c!56340 () Bool)

(assert (=> d!74617 (= c!56340 ((_ is ValueCellFull!5820) (select (arr!13651 _values!549) from!863)))))

(declare-fun e!267552 () V!17541)

(assert (=> d!74617 (= (get!6736 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!267552)))

(declare-fun b!458262 () Bool)

(declare-fun get!6737 (ValueCell!5820 V!17541) V!17541)

(assert (=> b!458262 (= e!267552 (get!6737 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458263 () Bool)

(declare-fun get!6738 (ValueCell!5820 V!17541) V!17541)

(assert (=> b!458263 (= e!267552 (get!6738 (select (arr!13651 _values!549) from!863) (dynLambda!884 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74617 c!56340) b!458262))

(assert (= (and d!74617 (not c!56340)) b!458263))

(assert (=> b!458262 m!441435))

(assert (=> b!458262 m!441433))

(declare-fun m!441669 () Bool)

(assert (=> b!458262 m!441669))

(assert (=> b!458263 m!441435))

(assert (=> b!458263 m!441433))

(declare-fun m!441671 () Bool)

(assert (=> b!458263 m!441671))

(assert (=> b!458071 d!74617))

(declare-fun b!458271 () Bool)

(declare-fun e!267557 () Bool)

(assert (=> b!458271 (= e!267557 tp_is_empty!12327)))

(declare-fun b!458270 () Bool)

(declare-fun e!267558 () Bool)

(assert (=> b!458270 (= e!267558 tp_is_empty!12327)))

(declare-fun mapIsEmpty!20140 () Bool)

(declare-fun mapRes!20140 () Bool)

(assert (=> mapIsEmpty!20140 mapRes!20140))

(declare-fun mapNonEmpty!20140 () Bool)

(declare-fun tp!38806 () Bool)

(assert (=> mapNonEmpty!20140 (= mapRes!20140 (and tp!38806 e!267558))))

(declare-fun mapValue!20140 () ValueCell!5820)

(declare-fun mapRest!20140 () (Array (_ BitVec 32) ValueCell!5820))

(declare-fun mapKey!20140 () (_ BitVec 32))

(assert (=> mapNonEmpty!20140 (= mapRest!20134 (store mapRest!20140 mapKey!20140 mapValue!20140))))

(declare-fun condMapEmpty!20140 () Bool)

(declare-fun mapDefault!20140 () ValueCell!5820)

(assert (=> mapNonEmpty!20134 (= condMapEmpty!20140 (= mapRest!20134 ((as const (Array (_ BitVec 32) ValueCell!5820)) mapDefault!20140)))))

(assert (=> mapNonEmpty!20134 (= tp!38797 (and e!267557 mapRes!20140))))

(assert (= (and mapNonEmpty!20134 condMapEmpty!20140) mapIsEmpty!20140))

(assert (= (and mapNonEmpty!20134 (not condMapEmpty!20140)) mapNonEmpty!20140))

(assert (= (and mapNonEmpty!20140 ((_ is ValueCellFull!5820) mapValue!20140)) b!458270))

(assert (= (and mapNonEmpty!20134 ((_ is ValueCellFull!5820) mapDefault!20140)) b!458271))

(declare-fun m!441673 () Bool)

(assert (=> mapNonEmpty!20140 m!441673))

(declare-fun b_lambda!9807 () Bool)

(assert (= b_lambda!9791 (or (and start!41084 b_free!10989) b_lambda!9807)))

(declare-fun b_lambda!9809 () Bool)

(assert (= b_lambda!9805 (or (and start!41084 b_free!10989) b_lambda!9809)))

(declare-fun b_lambda!9811 () Bool)

(assert (= b_lambda!9799 (or (and start!41084 b_free!10989) b_lambda!9811)))

(declare-fun b_lambda!9813 () Bool)

(assert (= b_lambda!9793 (or (and start!41084 b_free!10989) b_lambda!9813)))

(declare-fun b_lambda!9815 () Bool)

(assert (= b_lambda!9803 (or (and start!41084 b_free!10989) b_lambda!9815)))

(declare-fun b_lambda!9817 () Bool)

(assert (= b_lambda!9797 (or (and start!41084 b_free!10989) b_lambda!9817)))

(declare-fun b_lambda!9819 () Bool)

(assert (= b_lambda!9795 (or (and start!41084 b_free!10989) b_lambda!9819)))

(declare-fun b_lambda!9821 () Bool)

(assert (= b_lambda!9801 (or (and start!41084 b_free!10989) b_lambda!9821)))

(check-sat (not d!74615) (not b!458194) (not b_lambda!9811) (not b!458232) (not b_lambda!9821) (not b_lambda!9813) (not d!74607) (not d!74599) (not mapNonEmpty!20140) (not b!458201) (not b!458245) b_and!19225 (not bm!30116) (not bm!30111) (not b!458185) (not b!458195) (not b!458233) (not d!74595) (not b_lambda!9809) (not b_lambda!9817) (not b!458197) (not b!458138) (not b!458190) (not bm!30115) (not b!458191) (not b!458235) (not b!458257) (not b!458147) (not b_next!10989) (not b!458263) (not b!458225) (not b!458212) (not b!458227) (not bm!30122) (not b!458248) (not b!458193) (not b_lambda!9815) (not b!458202) (not b!458215) (not b!458141) (not b!458214) (not b!458189) (not b!458219) (not b!458209) (not d!74601) (not b_lambda!9807) (not bm!30124) (not bm!30117) (not b!458237) (not b!458256) (not b!458231) (not b!458205) tp_is_empty!12327 (not b!458217) (not b!458230) (not b!458203) (not b!458224) (not b!458157) (not b!458252) (not b!458188) (not b!458159) (not b!458218) (not b!458207) (not b!458139) (not b!458262) (not b!458250) (not d!74597) (not b!458213) (not bm!30123) (not bm!30125) (not b!458200) (not b!458255) (not b!458253) (not b!458206) (not b_lambda!9789) (not bm!30108) (not d!74605) (not b!458236) (not bm!30114) (not b_lambda!9819))
(check-sat b_and!19225 (not b_next!10989))
