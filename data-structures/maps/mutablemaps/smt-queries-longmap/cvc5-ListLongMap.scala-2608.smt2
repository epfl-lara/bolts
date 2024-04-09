; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39474 () Bool)

(assert start!39474)

(declare-fun b_free!9733 () Bool)

(declare-fun b_next!9733 () Bool)

(assert (=> start!39474 (= b_free!9733 (not b_next!9733))))

(declare-fun tp!34727 () Bool)

(declare-fun b_and!17359 () Bool)

(assert (=> start!39474 (= tp!34727 b_and!17359)))

(declare-fun res!245538 () Bool)

(declare-fun e!250541 () Bool)

(assert (=> start!39474 (=> (not res!245538) (not e!250541))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25597 0))(
  ( (array!25598 (arr!12245 (Array (_ BitVec 32) (_ BitVec 64))) (size!12597 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25597)

(assert (=> start!39474 (= res!245538 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12597 _keys!709))))))

(assert (=> start!39474 e!250541))

(declare-fun tp_is_empty!10885 () Bool)

(assert (=> start!39474 tp_is_empty!10885))

(assert (=> start!39474 tp!34727))

(assert (=> start!39474 true))

(declare-datatypes ((V!15619 0))(
  ( (V!15620 (val!5487 Int)) )
))
(declare-datatypes ((ValueCell!5099 0))(
  ( (ValueCellFull!5099 (v!7730 V!15619)) (EmptyCell!5099) )
))
(declare-datatypes ((array!25599 0))(
  ( (array!25600 (arr!12246 (Array (_ BitVec 32) ValueCell!5099)) (size!12598 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25599)

(declare-fun e!250544 () Bool)

(declare-fun array_inv!8920 (array!25599) Bool)

(assert (=> start!39474 (and (array_inv!8920 _values!549) e!250544)))

(declare-fun array_inv!8921 (array!25597) Bool)

(assert (=> start!39474 (array_inv!8921 _keys!709)))

(declare-fun b!420716 () Bool)

(declare-fun e!250540 () Bool)

(assert (=> b!420716 (= e!250540 tp_is_empty!10885)))

(declare-fun b!420717 () Bool)

(declare-fun res!245543 () Bool)

(declare-fun e!250538 () Bool)

(assert (=> b!420717 (=> (not res!245543) (not e!250538))))

(declare-fun lt!193139 () array!25597)

(declare-datatypes ((List!7164 0))(
  ( (Nil!7161) (Cons!7160 (h!8016 (_ BitVec 64)) (t!12570 List!7164)) )
))
(declare-fun arrayNoDuplicates!0 (array!25597 (_ BitVec 32) List!7164) Bool)

(assert (=> b!420717 (= res!245543 (arrayNoDuplicates!0 lt!193139 #b00000000000000000000000000000000 Nil!7161))))

(declare-fun b!420718 () Bool)

(declare-fun e!250546 () Bool)

(declare-fun e!250542 () Bool)

(assert (=> b!420718 (= e!250546 (not e!250542))))

(declare-fun res!245535 () Bool)

(assert (=> b!420718 (=> res!245535 e!250542)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420718 (= res!245535 (validKeyInArray!0 (select (arr!12245 _keys!709) from!863)))))

(declare-fun e!250543 () Bool)

(assert (=> b!420718 e!250543))

(declare-fun c!55238 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420718 (= c!55238 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15619)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12385 0))(
  ( (Unit!12386) )
))
(declare-fun lt!193135 () Unit!12385)

(declare-fun v!412 () V!15619)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15619)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!447 (array!25597 array!25599 (_ BitVec 32) (_ BitVec 32) V!15619 V!15619 (_ BitVec 32) (_ BitVec 64) V!15619 (_ BitVec 32) Int) Unit!12385)

(assert (=> b!420718 (= lt!193135 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!447 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17949 () Bool)

(declare-fun mapRes!17949 () Bool)

(declare-fun tp!34728 () Bool)

(declare-fun e!250539 () Bool)

(assert (=> mapNonEmpty!17949 (= mapRes!17949 (and tp!34728 e!250539))))

(declare-fun mapRest!17949 () (Array (_ BitVec 32) ValueCell!5099))

(declare-fun mapValue!17949 () ValueCell!5099)

(declare-fun mapKey!17949 () (_ BitVec 32))

(assert (=> mapNonEmpty!17949 (= (arr!12246 _values!549) (store mapRest!17949 mapKey!17949 mapValue!17949))))

(declare-fun b!420719 () Bool)

(declare-fun res!245541 () Bool)

(assert (=> b!420719 (=> (not res!245541) (not e!250541))))

(assert (=> b!420719 (= res!245541 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7161))))

(declare-fun bm!29371 () Bool)

(declare-datatypes ((tuple2!7120 0))(
  ( (tuple2!7121 (_1!3570 (_ BitVec 64)) (_2!3570 V!15619)) )
))
(declare-datatypes ((List!7165 0))(
  ( (Nil!7162) (Cons!7161 (h!8017 tuple2!7120) (t!12571 List!7165)) )
))
(declare-datatypes ((ListLongMap!6047 0))(
  ( (ListLongMap!6048 (toList!3039 List!7165)) )
))
(declare-fun call!29375 () ListLongMap!6047)

(declare-fun getCurrentListMapNoExtraKeys!1240 (array!25597 array!25599 (_ BitVec 32) (_ BitVec 32) V!15619 V!15619 (_ BitVec 32) Int) ListLongMap!6047)

(assert (=> bm!29371 (= call!29375 (getCurrentListMapNoExtraKeys!1240 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420720 () Bool)

(declare-fun res!245533 () Bool)

(assert (=> b!420720 (=> (not res!245533) (not e!250541))))

(declare-fun arrayContainsKey!0 (array!25597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420720 (= res!245533 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!420721 () Bool)

(declare-fun res!245531 () Bool)

(assert (=> b!420721 (=> (not res!245531) (not e!250541))))

(assert (=> b!420721 (= res!245531 (or (= (select (arr!12245 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12245 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420722 () Bool)

(assert (=> b!420722 (= e!250539 tp_is_empty!10885)))

(declare-fun b!420723 () Bool)

(declare-fun res!245536 () Bool)

(assert (=> b!420723 (=> (not res!245536) (not e!250541))))

(assert (=> b!420723 (= res!245536 (and (= (size!12598 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12597 _keys!709) (size!12598 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420724 () Bool)

(assert (=> b!420724 (= e!250542 true)))

(declare-fun lt!193131 () V!15619)

(declare-fun lt!193132 () ListLongMap!6047)

(declare-fun lt!193134 () tuple2!7120)

(declare-fun +!1243 (ListLongMap!6047 tuple2!7120) ListLongMap!6047)

(assert (=> b!420724 (= (+!1243 lt!193132 lt!193134) (+!1243 (+!1243 lt!193132 (tuple2!7121 k!794 lt!193131)) lt!193134))))

(declare-fun lt!193138 () V!15619)

(assert (=> b!420724 (= lt!193134 (tuple2!7121 k!794 lt!193138))))

(declare-fun lt!193136 () Unit!12385)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!60 (ListLongMap!6047 (_ BitVec 64) V!15619 V!15619) Unit!12385)

(assert (=> b!420724 (= lt!193136 (addSameAsAddTwiceSameKeyDiffValues!60 lt!193132 k!794 lt!193131 lt!193138))))

(declare-fun lt!193130 () V!15619)

(declare-fun get!6087 (ValueCell!5099 V!15619) V!15619)

(assert (=> b!420724 (= lt!193131 (get!6087 (select (arr!12246 _values!549) from!863) lt!193130))))

(declare-fun lt!193140 () ListLongMap!6047)

(assert (=> b!420724 (= lt!193140 (+!1243 lt!193132 (tuple2!7121 (select (arr!12245 lt!193139) from!863) lt!193138)))))

(assert (=> b!420724 (= lt!193138 (get!6087 (select (store (arr!12246 _values!549) i!563 (ValueCellFull!5099 v!412)) from!863) lt!193130))))

(declare-fun dynLambda!722 (Int (_ BitVec 64)) V!15619)

(assert (=> b!420724 (= lt!193130 (dynLambda!722 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193137 () array!25599)

(assert (=> b!420724 (= lt!193132 (getCurrentListMapNoExtraKeys!1240 lt!193139 lt!193137 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!29374 () ListLongMap!6047)

(declare-fun b!420725 () Bool)

(assert (=> b!420725 (= e!250543 (= call!29374 (+!1243 call!29375 (tuple2!7121 k!794 v!412))))))

(declare-fun b!420726 () Bool)

(assert (=> b!420726 (= e!250541 e!250538)))

(declare-fun res!245537 () Bool)

(assert (=> b!420726 (=> (not res!245537) (not e!250538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25597 (_ BitVec 32)) Bool)

(assert (=> b!420726 (= res!245537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193139 mask!1025))))

(assert (=> b!420726 (= lt!193139 (array!25598 (store (arr!12245 _keys!709) i!563 k!794) (size!12597 _keys!709)))))

(declare-fun b!420727 () Bool)

(declare-fun res!245540 () Bool)

(assert (=> b!420727 (=> (not res!245540) (not e!250541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420727 (= res!245540 (validMask!0 mask!1025))))

(declare-fun b!420728 () Bool)

(assert (=> b!420728 (= e!250544 (and e!250540 mapRes!17949))))

(declare-fun condMapEmpty!17949 () Bool)

(declare-fun mapDefault!17949 () ValueCell!5099)

