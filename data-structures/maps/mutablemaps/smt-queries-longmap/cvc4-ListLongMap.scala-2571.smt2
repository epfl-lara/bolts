; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39256 () Bool)

(assert start!39256)

(declare-fun b_free!9515 () Bool)

(declare-fun b_next!9515 () Bool)

(assert (=> start!39256 (= b_free!9515 (not b_next!9515))))

(declare-fun tp!34074 () Bool)

(declare-fun b_and!16923 () Bool)

(assert (=> start!39256 (= tp!34074 b_and!16923)))

(declare-fun mapNonEmpty!17622 () Bool)

(declare-fun mapRes!17622 () Bool)

(declare-fun tp!34073 () Bool)

(declare-fun e!247603 () Bool)

(assert (=> mapNonEmpty!17622 (= mapRes!17622 (and tp!34073 e!247603))))

(declare-datatypes ((V!15327 0))(
  ( (V!15328 (val!5378 Int)) )
))
(declare-datatypes ((ValueCell!4990 0))(
  ( (ValueCellFull!4990 (v!7621 V!15327)) (EmptyCell!4990) )
))
(declare-fun mapRest!17622 () (Array (_ BitVec 32) ValueCell!4990))

(declare-datatypes ((array!25173 0))(
  ( (array!25174 (arr!12033 (Array (_ BitVec 32) ValueCell!4990)) (size!12385 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25173)

(declare-fun mapKey!17622 () (_ BitVec 32))

(declare-fun mapValue!17622 () ValueCell!4990)

(assert (=> mapNonEmpty!17622 (= (arr!12033 _values!549) (store mapRest!17622 mapKey!17622 mapValue!17622))))

(declare-fun b!414285 () Bool)

(declare-fun res!240964 () Bool)

(declare-fun e!247599 () Bool)

(assert (=> b!414285 (=> (not res!240964) (not e!247599))))

(declare-datatypes ((array!25175 0))(
  ( (array!25176 (arr!12034 (Array (_ BitVec 32) (_ BitVec 64))) (size!12386 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25175)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414285 (= res!240964 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!414286 () Bool)

(declare-fun e!247598 () Bool)

(declare-fun e!247602 () Bool)

(assert (=> b!414286 (= e!247598 (not e!247602))))

(declare-fun res!240965 () Bool)

(assert (=> b!414286 (=> res!240965 e!247602)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414286 (= res!240965 (validKeyInArray!0 (select (arr!12034 _keys!709) from!863)))))

(declare-fun e!247595 () Bool)

(assert (=> b!414286 e!247595))

(declare-fun c!54911 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414286 (= c!54911 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15327)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15327)

(declare-fun v!412 () V!15327)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12217 0))(
  ( (Unit!12218) )
))
(declare-fun lt!189972 () Unit!12217)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!371 (array!25175 array!25173 (_ BitVec 32) (_ BitVec 32) V!15327 V!15327 (_ BitVec 32) (_ BitVec 64) V!15327 (_ BitVec 32) Int) Unit!12217)

(assert (=> b!414286 (= lt!189972 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!371 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17622 () Bool)

(assert (=> mapIsEmpty!17622 mapRes!17622))

(declare-fun b!414287 () Bool)

(declare-fun res!240966 () Bool)

(declare-fun e!247601 () Bool)

(assert (=> b!414287 (=> (not res!240966) (not e!247601))))

(declare-fun lt!189971 () array!25175)

(declare-datatypes ((List!6981 0))(
  ( (Nil!6978) (Cons!6977 (h!7833 (_ BitVec 64)) (t!12169 List!6981)) )
))
(declare-fun arrayNoDuplicates!0 (array!25175 (_ BitVec 32) List!6981) Bool)

(assert (=> b!414287 (= res!240966 (arrayNoDuplicates!0 lt!189971 #b00000000000000000000000000000000 Nil!6978))))

(declare-fun b!414288 () Bool)

(assert (=> b!414288 (= e!247599 e!247601)))

(declare-fun res!240963 () Bool)

(assert (=> b!414288 (=> (not res!240963) (not e!247601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25175 (_ BitVec 32)) Bool)

(assert (=> b!414288 (= res!240963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189971 mask!1025))))

(assert (=> b!414288 (= lt!189971 (array!25176 (store (arr!12034 _keys!709) i!563 k!794) (size!12386 _keys!709)))))

(declare-fun b!414289 () Bool)

(declare-fun res!240958 () Bool)

(assert (=> b!414289 (=> (not res!240958) (not e!247599))))

(assert (=> b!414289 (= res!240958 (validKeyInArray!0 k!794))))

(declare-fun lt!189975 () array!25173)

(declare-fun bm!28717 () Bool)

(declare-datatypes ((tuple2!6924 0))(
  ( (tuple2!6925 (_1!3472 (_ BitVec 64)) (_2!3472 V!15327)) )
))
(declare-datatypes ((List!6982 0))(
  ( (Nil!6979) (Cons!6978 (h!7834 tuple2!6924) (t!12170 List!6982)) )
))
(declare-datatypes ((ListLongMap!5851 0))(
  ( (ListLongMap!5852 (toList!2941 List!6982)) )
))
(declare-fun call!28720 () ListLongMap!5851)

(declare-fun getCurrentListMapNoExtraKeys!1148 (array!25175 array!25173 (_ BitVec 32) (_ BitVec 32) V!15327 V!15327 (_ BitVec 32) Int) ListLongMap!5851)

(assert (=> bm!28717 (= call!28720 (getCurrentListMapNoExtraKeys!1148 (ite c!54911 _keys!709 lt!189971) (ite c!54911 _values!549 lt!189975) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414290 () Bool)

(declare-fun e!247596 () Bool)

(declare-fun tp_is_empty!10667 () Bool)

(assert (=> b!414290 (= e!247596 tp_is_empty!10667)))

(declare-fun b!414291 () Bool)

(declare-fun res!240954 () Bool)

(assert (=> b!414291 (=> (not res!240954) (not e!247599))))

(assert (=> b!414291 (= res!240954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414292 () Bool)

(declare-fun res!240960 () Bool)

(assert (=> b!414292 (=> (not res!240960) (not e!247599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414292 (= res!240960 (validMask!0 mask!1025))))

(declare-fun b!414293 () Bool)

(declare-fun res!240956 () Bool)

(assert (=> b!414293 (=> (not res!240956) (not e!247599))))

(assert (=> b!414293 (= res!240956 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6978))))

(declare-fun b!414294 () Bool)

(declare-fun res!240957 () Bool)

(assert (=> b!414294 (=> (not res!240957) (not e!247601))))

(assert (=> b!414294 (= res!240957 (bvsle from!863 i!563))))

(declare-fun b!414295 () Bool)

(assert (=> b!414295 (= e!247602 true)))

(declare-fun lt!189974 () ListLongMap!5851)

(declare-fun +!1157 (ListLongMap!5851 tuple2!6924) ListLongMap!5851)

(declare-fun get!5939 (ValueCell!4990 V!15327) V!15327)

(declare-fun dynLambda!648 (Int (_ BitVec 64)) V!15327)

(assert (=> b!414295 (= lt!189974 (+!1157 (getCurrentListMapNoExtraKeys!1148 lt!189971 lt!189975 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6925 (select (arr!12034 lt!189971) from!863) (get!5939 (select (arr!12033 lt!189975) from!863) (dynLambda!648 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!414296 () Bool)

(declare-fun call!28721 () ListLongMap!5851)

(assert (=> b!414296 (= e!247595 (= call!28720 call!28721))))

(declare-fun b!414297 () Bool)

(declare-fun res!240953 () Bool)

(assert (=> b!414297 (=> (not res!240953) (not e!247599))))

(assert (=> b!414297 (= res!240953 (or (= (select (arr!12034 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12034 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414298 () Bool)

(assert (=> b!414298 (= e!247603 tp_is_empty!10667)))

(declare-fun b!414299 () Bool)

(declare-fun res!240955 () Bool)

(assert (=> b!414299 (=> (not res!240955) (not e!247599))))

(assert (=> b!414299 (= res!240955 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12386 _keys!709))))))

(declare-fun res!240961 () Bool)

(assert (=> start!39256 (=> (not res!240961) (not e!247599))))

(assert (=> start!39256 (= res!240961 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12386 _keys!709))))))

(assert (=> start!39256 e!247599))

(assert (=> start!39256 tp_is_empty!10667))

(assert (=> start!39256 tp!34074))

(assert (=> start!39256 true))

(declare-fun e!247597 () Bool)

(declare-fun array_inv!8776 (array!25173) Bool)

(assert (=> start!39256 (and (array_inv!8776 _values!549) e!247597)))

(declare-fun array_inv!8777 (array!25175) Bool)

(assert (=> start!39256 (array_inv!8777 _keys!709)))

(declare-fun b!414300 () Bool)

(declare-fun res!240962 () Bool)

(assert (=> b!414300 (=> (not res!240962) (not e!247599))))

(assert (=> b!414300 (= res!240962 (and (= (size!12385 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12386 _keys!709) (size!12385 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!28718 () Bool)

(assert (=> bm!28718 (= call!28721 (getCurrentListMapNoExtraKeys!1148 (ite c!54911 lt!189971 _keys!709) (ite c!54911 lt!189975 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414301 () Bool)

(assert (=> b!414301 (= e!247597 (and e!247596 mapRes!17622))))

(declare-fun condMapEmpty!17622 () Bool)

(declare-fun mapDefault!17622 () ValueCell!4990)

