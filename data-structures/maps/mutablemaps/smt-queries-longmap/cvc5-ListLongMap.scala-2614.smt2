; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39510 () Bool)

(assert start!39510)

(declare-fun b_free!9769 () Bool)

(declare-fun b_next!9769 () Bool)

(assert (=> start!39510 (= b_free!9769 (not b_next!9769))))

(declare-fun tp!34836 () Bool)

(declare-fun b_and!17431 () Bool)

(assert (=> start!39510 (= tp!34836 b_and!17431)))

(declare-fun mapIsEmpty!18003 () Bool)

(declare-fun mapRes!18003 () Bool)

(assert (=> mapIsEmpty!18003 mapRes!18003))

(declare-fun b!421778 () Bool)

(declare-fun res!246293 () Bool)

(declare-fun e!251029 () Bool)

(assert (=> b!421778 (=> (not res!246293) (not e!251029))))

(declare-datatypes ((array!25669 0))(
  ( (array!25670 (arr!12281 (Array (_ BitVec 32) (_ BitVec 64))) (size!12633 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25669)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421778 (= res!246293 (or (= (select (arr!12281 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12281 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421779 () Bool)

(declare-fun res!246289 () Bool)

(declare-fun e!251032 () Bool)

(assert (=> b!421779 (=> (not res!246289) (not e!251032))))

(declare-fun lt!193725 () array!25669)

(declare-datatypes ((List!7194 0))(
  ( (Nil!7191) (Cons!7190 (h!8046 (_ BitVec 64)) (t!12636 List!7194)) )
))
(declare-fun arrayNoDuplicates!0 (array!25669 (_ BitVec 32) List!7194) Bool)

(assert (=> b!421779 (= res!246289 (arrayNoDuplicates!0 lt!193725 #b00000000000000000000000000000000 Nil!7191))))

(declare-fun b!421780 () Bool)

(declare-fun res!246300 () Bool)

(assert (=> b!421780 (=> (not res!246300) (not e!251029))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421780 (= res!246300 (validMask!0 mask!1025))))

(declare-fun b!421781 () Bool)

(declare-fun e!251027 () Bool)

(declare-datatypes ((V!15667 0))(
  ( (V!15668 (val!5505 Int)) )
))
(declare-datatypes ((tuple2!7152 0))(
  ( (tuple2!7153 (_1!3586 (_ BitVec 64)) (_2!3586 V!15667)) )
))
(declare-datatypes ((List!7195 0))(
  ( (Nil!7192) (Cons!7191 (h!8047 tuple2!7152) (t!12637 List!7195)) )
))
(declare-datatypes ((ListLongMap!6079 0))(
  ( (ListLongMap!6080 (toList!3055 List!7195)) )
))
(declare-fun call!29483 () ListLongMap!6079)

(declare-fun call!29482 () ListLongMap!6079)

(assert (=> b!421781 (= e!251027 (= call!29483 call!29482))))

(declare-fun mapNonEmpty!18003 () Bool)

(declare-fun tp!34835 () Bool)

(declare-fun e!251024 () Bool)

(assert (=> mapNonEmpty!18003 (= mapRes!18003 (and tp!34835 e!251024))))

(declare-datatypes ((ValueCell!5117 0))(
  ( (ValueCellFull!5117 (v!7748 V!15667)) (EmptyCell!5117) )
))
(declare-fun mapRest!18003 () (Array (_ BitVec 32) ValueCell!5117))

(declare-datatypes ((array!25671 0))(
  ( (array!25672 (arr!12282 (Array (_ BitVec 32) ValueCell!5117)) (size!12634 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25671)

(declare-fun mapValue!18003 () ValueCell!5117)

(declare-fun mapKey!18003 () (_ BitVec 32))

(assert (=> mapNonEmpty!18003 (= (arr!12282 _values!549) (store mapRest!18003 mapKey!18003 mapValue!18003))))

(declare-fun b!421782 () Bool)

(declare-fun tp_is_empty!10921 () Bool)

(assert (=> b!421782 (= e!251024 tp_is_empty!10921)))

(declare-fun b!421784 () Bool)

(declare-fun res!246299 () Bool)

(assert (=> b!421784 (=> (not res!246299) (not e!251029))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421784 (= res!246299 (validKeyInArray!0 k!794))))

(declare-fun b!421785 () Bool)

(declare-fun res!246288 () Bool)

(assert (=> b!421785 (=> (not res!246288) (not e!251032))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!421785 (= res!246288 (bvsle from!863 i!563))))

(declare-fun minValue!515 () V!15667)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15667)

(declare-fun c!55292 () Bool)

(declare-fun lt!193726 () array!25671)

(declare-fun bm!29479 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1256 (array!25669 array!25671 (_ BitVec 32) (_ BitVec 32) V!15667 V!15667 (_ BitVec 32) Int) ListLongMap!6079)

(assert (=> bm!29479 (= call!29482 (getCurrentListMapNoExtraKeys!1256 (ite c!55292 lt!193725 _keys!709) (ite c!55292 lt!193726 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421786 () Bool)

(declare-fun e!251025 () Bool)

(assert (=> b!421786 (= e!251032 e!251025)))

(declare-fun res!246287 () Bool)

(assert (=> b!421786 (=> (not res!246287) (not e!251025))))

(assert (=> b!421786 (= res!246287 (= from!863 i!563))))

(declare-fun lt!193727 () ListLongMap!6079)

(assert (=> b!421786 (= lt!193727 (getCurrentListMapNoExtraKeys!1256 lt!193725 lt!193726 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15667)

(assert (=> b!421786 (= lt!193726 (array!25672 (store (arr!12282 _values!549) i!563 (ValueCellFull!5117 v!412)) (size!12634 _values!549)))))

(declare-fun lt!193733 () ListLongMap!6079)

(assert (=> b!421786 (= lt!193733 (getCurrentListMapNoExtraKeys!1256 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421787 () Bool)

(declare-fun e!251026 () Bool)

(assert (=> b!421787 (= e!251026 true)))

(declare-fun lt!193728 () V!15667)

(declare-fun lt!193731 () tuple2!7152)

(declare-fun lt!193734 () ListLongMap!6079)

(declare-fun +!1257 (ListLongMap!6079 tuple2!7152) ListLongMap!6079)

(assert (=> b!421787 (= (+!1257 lt!193734 lt!193731) (+!1257 (+!1257 lt!193734 (tuple2!7153 k!794 lt!193728)) lt!193731))))

(declare-fun lt!193732 () V!15667)

(assert (=> b!421787 (= lt!193731 (tuple2!7153 k!794 lt!193732))))

(declare-datatypes ((Unit!12417 0))(
  ( (Unit!12418) )
))
(declare-fun lt!193729 () Unit!12417)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!73 (ListLongMap!6079 (_ BitVec 64) V!15667 V!15667) Unit!12417)

(assert (=> b!421787 (= lt!193729 (addSameAsAddTwiceSameKeyDiffValues!73 lt!193734 k!794 lt!193728 lt!193732))))

(declare-fun lt!193730 () V!15667)

(declare-fun get!6112 (ValueCell!5117 V!15667) V!15667)

(assert (=> b!421787 (= lt!193728 (get!6112 (select (arr!12282 _values!549) from!863) lt!193730))))

(assert (=> b!421787 (= lt!193727 (+!1257 lt!193734 (tuple2!7153 (select (arr!12281 lt!193725) from!863) lt!193732)))))

(assert (=> b!421787 (= lt!193732 (get!6112 (select (store (arr!12282 _values!549) i!563 (ValueCellFull!5117 v!412)) from!863) lt!193730))))

(declare-fun dynLambda!735 (Int (_ BitVec 64)) V!15667)

(assert (=> b!421787 (= lt!193730 (dynLambda!735 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421787 (= lt!193734 (getCurrentListMapNoExtraKeys!1256 lt!193725 lt!193726 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421788 () Bool)

(assert (=> b!421788 (= e!251025 (not e!251026))))

(declare-fun res!246291 () Bool)

(assert (=> b!421788 (=> res!246291 e!251026)))

(assert (=> b!421788 (= res!246291 (validKeyInArray!0 (select (arr!12281 _keys!709) from!863)))))

(assert (=> b!421788 e!251027))

(assert (=> b!421788 (= c!55292 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193724 () Unit!12417)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!459 (array!25669 array!25671 (_ BitVec 32) (_ BitVec 32) V!15667 V!15667 (_ BitVec 32) (_ BitVec 64) V!15667 (_ BitVec 32) Int) Unit!12417)

(assert (=> b!421788 (= lt!193724 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!459 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421789 () Bool)

(declare-fun e!251030 () Bool)

(declare-fun e!251028 () Bool)

(assert (=> b!421789 (= e!251030 (and e!251028 mapRes!18003))))

(declare-fun condMapEmpty!18003 () Bool)

(declare-fun mapDefault!18003 () ValueCell!5117)

