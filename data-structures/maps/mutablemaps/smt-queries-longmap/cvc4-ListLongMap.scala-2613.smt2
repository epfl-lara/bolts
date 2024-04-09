; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39508 () Bool)

(assert start!39508)

(declare-fun b_free!9767 () Bool)

(declare-fun b_next!9767 () Bool)

(assert (=> start!39508 (= b_free!9767 (not b_next!9767))))

(declare-fun tp!34829 () Bool)

(declare-fun b_and!17427 () Bool)

(assert (=> start!39508 (= tp!34829 b_and!17427)))

(declare-fun b!421719 () Bool)

(declare-fun e!250999 () Bool)

(declare-fun e!251002 () Bool)

(assert (=> b!421719 (= e!250999 (not e!251002))))

(declare-fun res!246245 () Bool)

(assert (=> b!421719 (=> res!246245 e!251002)))

(declare-datatypes ((array!25665 0))(
  ( (array!25666 (arr!12279 (Array (_ BitVec 32) (_ BitVec 64))) (size!12631 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25665)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421719 (= res!246245 (validKeyInArray!0 (select (arr!12279 _keys!709) from!863)))))

(declare-fun e!251001 () Bool)

(assert (=> b!421719 e!251001))

(declare-fun c!55289 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421719 (= c!55289 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15663 0))(
  ( (V!15664 (val!5504 Int)) )
))
(declare-fun minValue!515 () V!15663)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5116 0))(
  ( (ValueCellFull!5116 (v!7747 V!15663)) (EmptyCell!5116) )
))
(declare-datatypes ((array!25667 0))(
  ( (array!25668 (arr!12280 (Array (_ BitVec 32) ValueCell!5116)) (size!12632 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25667)

(declare-fun zeroValue!515 () V!15663)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12415 0))(
  ( (Unit!12416) )
))
(declare-fun lt!193701 () Unit!12415)

(declare-fun v!412 () V!15663)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!458 (array!25665 array!25667 (_ BitVec 32) (_ BitVec 32) V!15663 V!15663 (_ BitVec 32) (_ BitVec 64) V!15663 (_ BitVec 32) Int) Unit!12415)

(assert (=> b!421719 (= lt!193701 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!458 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18000 () Bool)

(declare-fun mapRes!18000 () Bool)

(declare-fun tp!34830 () Bool)

(declare-fun e!251004 () Bool)

(assert (=> mapNonEmpty!18000 (= mapRes!18000 (and tp!34830 e!251004))))

(declare-fun mapRest!18000 () (Array (_ BitVec 32) ValueCell!5116))

(declare-fun mapKey!18000 () (_ BitVec 32))

(declare-fun mapValue!18000 () ValueCell!5116)

(assert (=> mapNonEmpty!18000 (= (arr!12280 _values!549) (store mapRest!18000 mapKey!18000 mapValue!18000))))

(declare-fun b!421720 () Bool)

(declare-datatypes ((tuple2!7150 0))(
  ( (tuple2!7151 (_1!3585 (_ BitVec 64)) (_2!3585 V!15663)) )
))
(declare-datatypes ((List!7192 0))(
  ( (Nil!7189) (Cons!7188 (h!8044 tuple2!7150) (t!12632 List!7192)) )
))
(declare-datatypes ((ListLongMap!6077 0))(
  ( (ListLongMap!6078 (toList!3054 List!7192)) )
))
(declare-fun call!29477 () ListLongMap!6077)

(declare-fun call!29476 () ListLongMap!6077)

(assert (=> b!421720 (= e!251001 (= call!29477 call!29476))))

(declare-fun b!421721 () Bool)

(declare-fun e!251000 () Bool)

(assert (=> b!421721 (= e!251000 e!250999)))

(declare-fun res!246247 () Bool)

(assert (=> b!421721 (=> (not res!246247) (not e!250999))))

(assert (=> b!421721 (= res!246247 (= from!863 i!563))))

(declare-fun lt!193696 () array!25667)

(declare-fun lt!193692 () array!25665)

(declare-fun lt!193697 () ListLongMap!6077)

(declare-fun getCurrentListMapNoExtraKeys!1255 (array!25665 array!25667 (_ BitVec 32) (_ BitVec 32) V!15663 V!15663 (_ BitVec 32) Int) ListLongMap!6077)

(assert (=> b!421721 (= lt!193697 (getCurrentListMapNoExtraKeys!1255 lt!193692 lt!193696 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421721 (= lt!193696 (array!25668 (store (arr!12280 _values!549) i!563 (ValueCellFull!5116 v!412)) (size!12632 _values!549)))))

(declare-fun lt!193699 () ListLongMap!6077)

(assert (=> b!421721 (= lt!193699 (getCurrentListMapNoExtraKeys!1255 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421722 () Bool)

(declare-fun res!246249 () Bool)

(declare-fun e!251003 () Bool)

(assert (=> b!421722 (=> (not res!246249) (not e!251003))))

(assert (=> b!421722 (= res!246249 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12631 _keys!709))))))

(declare-fun b!421723 () Bool)

(declare-fun res!246256 () Bool)

(assert (=> b!421723 (=> (not res!246256) (not e!251003))))

(assert (=> b!421723 (= res!246256 (or (= (select (arr!12279 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12279 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421724 () Bool)

(declare-fun e!250997 () Bool)

(declare-fun tp_is_empty!10919 () Bool)

(assert (=> b!421724 (= e!250997 tp_is_empty!10919)))

(declare-fun bm!29473 () Bool)

(assert (=> bm!29473 (= call!29477 (getCurrentListMapNoExtraKeys!1255 (ite c!55289 _keys!709 lt!193692) (ite c!55289 _values!549 lt!193696) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421725 () Bool)

(assert (=> b!421725 (= e!251004 tp_is_empty!10919)))

(declare-fun b!421726 () Bool)

(declare-fun res!246246 () Bool)

(assert (=> b!421726 (=> (not res!246246) (not e!251003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25665 (_ BitVec 32)) Bool)

(assert (=> b!421726 (= res!246246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421727 () Bool)

(declare-fun res!246252 () Bool)

(assert (=> b!421727 (=> (not res!246252) (not e!251000))))

(assert (=> b!421727 (= res!246252 (bvsle from!863 i!563))))

(declare-fun b!421728 () Bool)

(declare-fun res!246255 () Bool)

(assert (=> b!421728 (=> (not res!246255) (not e!251003))))

(declare-datatypes ((List!7193 0))(
  ( (Nil!7190) (Cons!7189 (h!8045 (_ BitVec 64)) (t!12633 List!7193)) )
))
(declare-fun arrayNoDuplicates!0 (array!25665 (_ BitVec 32) List!7193) Bool)

(assert (=> b!421728 (= res!246255 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7190))))

(declare-fun b!421729 () Bool)

(declare-fun res!246248 () Bool)

(assert (=> b!421729 (=> (not res!246248) (not e!251003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421729 (= res!246248 (validMask!0 mask!1025))))

(declare-fun b!421730 () Bool)

(assert (=> b!421730 (= e!251002 true)))

(declare-fun lt!193694 () ListLongMap!6077)

(declare-fun lt!193693 () V!15663)

(declare-fun lt!193691 () tuple2!7150)

(declare-fun +!1256 (ListLongMap!6077 tuple2!7150) ListLongMap!6077)

(assert (=> b!421730 (= (+!1256 lt!193694 lt!193691) (+!1256 (+!1256 lt!193694 (tuple2!7151 k!794 lt!193693)) lt!193691))))

(declare-fun lt!193700 () V!15663)

(assert (=> b!421730 (= lt!193691 (tuple2!7151 k!794 lt!193700))))

(declare-fun lt!193698 () Unit!12415)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!72 (ListLongMap!6077 (_ BitVec 64) V!15663 V!15663) Unit!12415)

(assert (=> b!421730 (= lt!193698 (addSameAsAddTwiceSameKeyDiffValues!72 lt!193694 k!794 lt!193693 lt!193700))))

(declare-fun lt!193695 () V!15663)

(declare-fun get!6109 (ValueCell!5116 V!15663) V!15663)

(assert (=> b!421730 (= lt!193693 (get!6109 (select (arr!12280 _values!549) from!863) lt!193695))))

(assert (=> b!421730 (= lt!193697 (+!1256 lt!193694 (tuple2!7151 (select (arr!12279 lt!193692) from!863) lt!193700)))))

(assert (=> b!421730 (= lt!193700 (get!6109 (select (store (arr!12280 _values!549) i!563 (ValueCellFull!5116 v!412)) from!863) lt!193695))))

(declare-fun dynLambda!734 (Int (_ BitVec 64)) V!15663)

(assert (=> b!421730 (= lt!193695 (dynLambda!734 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421730 (= lt!193694 (getCurrentListMapNoExtraKeys!1255 lt!193692 lt!193696 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421731 () Bool)

(declare-fun res!246257 () Bool)

(assert (=> b!421731 (=> (not res!246257) (not e!251003))))

(declare-fun arrayContainsKey!0 (array!25665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421731 (= res!246257 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!421732 () Bool)

(declare-fun res!246251 () Bool)

(assert (=> b!421732 (=> (not res!246251) (not e!251003))))

(assert (=> b!421732 (= res!246251 (and (= (size!12632 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12631 _keys!709) (size!12632 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421734 () Bool)

(declare-fun res!246250 () Bool)

(assert (=> b!421734 (=> (not res!246250) (not e!251003))))

(assert (=> b!421734 (= res!246250 (validKeyInArray!0 k!794))))

(declare-fun b!421735 () Bool)

(assert (=> b!421735 (= e!251003 e!251000)))

(declare-fun res!246253 () Bool)

(assert (=> b!421735 (=> (not res!246253) (not e!251000))))

(assert (=> b!421735 (= res!246253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193692 mask!1025))))

(assert (=> b!421735 (= lt!193692 (array!25666 (store (arr!12279 _keys!709) i!563 k!794) (size!12631 _keys!709)))))

(declare-fun mapIsEmpty!18000 () Bool)

(assert (=> mapIsEmpty!18000 mapRes!18000))

(declare-fun b!421736 () Bool)

(declare-fun res!246254 () Bool)

(assert (=> b!421736 (=> (not res!246254) (not e!251000))))

(assert (=> b!421736 (= res!246254 (arrayNoDuplicates!0 lt!193692 #b00000000000000000000000000000000 Nil!7190))))

(declare-fun b!421737 () Bool)

(assert (=> b!421737 (= e!251001 (= call!29476 (+!1256 call!29477 (tuple2!7151 k!794 v!412))))))

(declare-fun bm!29474 () Bool)

(assert (=> bm!29474 (= call!29476 (getCurrentListMapNoExtraKeys!1255 (ite c!55289 lt!193692 _keys!709) (ite c!55289 lt!193696 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!246258 () Bool)

(assert (=> start!39508 (=> (not res!246258) (not e!251003))))

(assert (=> start!39508 (= res!246258 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12631 _keys!709))))))

(assert (=> start!39508 e!251003))

(assert (=> start!39508 tp_is_empty!10919))

(assert (=> start!39508 tp!34829))

(assert (=> start!39508 true))

(declare-fun e!250998 () Bool)

(declare-fun array_inv!8944 (array!25667) Bool)

(assert (=> start!39508 (and (array_inv!8944 _values!549) e!250998)))

(declare-fun array_inv!8945 (array!25665) Bool)

(assert (=> start!39508 (array_inv!8945 _keys!709)))

(declare-fun b!421733 () Bool)

(assert (=> b!421733 (= e!250998 (and e!250997 mapRes!18000))))

(declare-fun condMapEmpty!18000 () Bool)

(declare-fun mapDefault!18000 () ValueCell!5116)

