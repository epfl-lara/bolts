; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39310 () Bool)

(assert start!39310)

(declare-fun b_free!9569 () Bool)

(declare-fun b_next!9569 () Bool)

(assert (=> start!39310 (= b_free!9569 (not b_next!9569))))

(declare-fun tp!34235 () Bool)

(declare-fun b_and!17031 () Bool)

(assert (=> start!39310 (= tp!34235 b_and!17031)))

(declare-fun b!415878 () Bool)

(declare-fun res!242089 () Bool)

(declare-fun e!248324 () Bool)

(assert (=> b!415878 (=> (not res!242089) (not e!248324))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415878 (= res!242089 (validKeyInArray!0 k!794))))

(declare-fun b!415879 () Bool)

(declare-fun e!248331 () Bool)

(declare-fun e!248332 () Bool)

(assert (=> b!415879 (= e!248331 (not e!248332))))

(declare-fun res!242096 () Bool)

(assert (=> b!415879 (=> res!242096 e!248332)))

(declare-datatypes ((array!25277 0))(
  ( (array!25278 (arr!12085 (Array (_ BitVec 32) (_ BitVec 64))) (size!12437 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25277)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!415879 (= res!242096 (validKeyInArray!0 (select (arr!12085 _keys!709) from!863)))))

(declare-fun e!248326 () Bool)

(assert (=> b!415879 e!248326))

(declare-fun c!54992 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415879 (= c!54992 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15399 0))(
  ( (V!15400 (val!5405 Int)) )
))
(declare-fun minValue!515 () V!15399)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5017 0))(
  ( (ValueCellFull!5017 (v!7648 V!15399)) (EmptyCell!5017) )
))
(declare-datatypes ((array!25279 0))(
  ( (array!25280 (arr!12086 (Array (_ BitVec 32) ValueCell!5017)) (size!12438 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25279)

(declare-fun zeroValue!515 () V!15399)

(declare-datatypes ((Unit!12253 0))(
  ( (Unit!12254) )
))
(declare-fun lt!190427 () Unit!12253)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun v!412 () V!15399)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!389 (array!25277 array!25279 (_ BitVec 32) (_ BitVec 32) V!15399 V!15399 (_ BitVec 32) (_ BitVec 64) V!15399 (_ BitVec 32) Int) Unit!12253)

(assert (=> b!415879 (= lt!190427 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!389 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!190425 () array!25279)

(declare-datatypes ((tuple2!6970 0))(
  ( (tuple2!6971 (_1!3495 (_ BitVec 64)) (_2!3495 V!15399)) )
))
(declare-datatypes ((List!7025 0))(
  ( (Nil!7022) (Cons!7021 (h!7877 tuple2!6970) (t!12267 List!7025)) )
))
(declare-datatypes ((ListLongMap!5897 0))(
  ( (ListLongMap!5898 (toList!2964 List!7025)) )
))
(declare-fun call!28883 () ListLongMap!5897)

(declare-fun lt!190426 () array!25277)

(declare-fun bm!28879 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1168 (array!25277 array!25279 (_ BitVec 32) (_ BitVec 32) V!15399 V!15399 (_ BitVec 32) Int) ListLongMap!5897)

(assert (=> bm!28879 (= call!28883 (getCurrentListMapNoExtraKeys!1168 (ite c!54992 _keys!709 lt!190426) (ite c!54992 _values!549 lt!190425) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415880 () Bool)

(declare-fun e!248325 () Bool)

(assert (=> b!415880 (= e!248325 e!248331)))

(declare-fun res!242092 () Bool)

(assert (=> b!415880 (=> (not res!242092) (not e!248331))))

(assert (=> b!415880 (= res!242092 (= from!863 i!563))))

(declare-fun lt!190434 () ListLongMap!5897)

(assert (=> b!415880 (= lt!190434 (getCurrentListMapNoExtraKeys!1168 lt!190426 lt!190425 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415880 (= lt!190425 (array!25280 (store (arr!12086 _values!549) i!563 (ValueCellFull!5017 v!412)) (size!12438 _values!549)))))

(declare-fun lt!190431 () ListLongMap!5897)

(assert (=> b!415880 (= lt!190431 (getCurrentListMapNoExtraKeys!1168 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415881 () Bool)

(declare-fun e!248327 () Bool)

(declare-fun tp_is_empty!10721 () Bool)

(assert (=> b!415881 (= e!248327 tp_is_empty!10721)))

(declare-fun b!415882 () Bool)

(assert (=> b!415882 (= e!248324 e!248325)))

(declare-fun res!242090 () Bool)

(assert (=> b!415882 (=> (not res!242090) (not e!248325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25277 (_ BitVec 32)) Bool)

(assert (=> b!415882 (= res!242090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190426 mask!1025))))

(assert (=> b!415882 (= lt!190426 (array!25278 (store (arr!12085 _keys!709) i!563 k!794) (size!12437 _keys!709)))))

(declare-fun bm!28880 () Bool)

(declare-fun call!28882 () ListLongMap!5897)

(assert (=> bm!28880 (= call!28882 (getCurrentListMapNoExtraKeys!1168 (ite c!54992 lt!190426 _keys!709) (ite c!54992 lt!190425 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415883 () Bool)

(assert (=> b!415883 (= e!248326 (= call!28883 call!28882))))

(declare-fun b!415884 () Bool)

(declare-fun res!242097 () Bool)

(assert (=> b!415884 (=> (not res!242097) (not e!248325))))

(declare-datatypes ((List!7026 0))(
  ( (Nil!7023) (Cons!7022 (h!7878 (_ BitVec 64)) (t!12268 List!7026)) )
))
(declare-fun arrayNoDuplicates!0 (array!25277 (_ BitVec 32) List!7026) Bool)

(assert (=> b!415884 (= res!242097 (arrayNoDuplicates!0 lt!190426 #b00000000000000000000000000000000 Nil!7023))))

(declare-fun mapIsEmpty!17703 () Bool)

(declare-fun mapRes!17703 () Bool)

(assert (=> mapIsEmpty!17703 mapRes!17703))

(declare-fun res!242100 () Bool)

(assert (=> start!39310 (=> (not res!242100) (not e!248324))))

(assert (=> start!39310 (= res!242100 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12437 _keys!709))))))

(assert (=> start!39310 e!248324))

(assert (=> start!39310 tp_is_empty!10721))

(assert (=> start!39310 tp!34235))

(assert (=> start!39310 true))

(declare-fun e!248330 () Bool)

(declare-fun array_inv!8814 (array!25279) Bool)

(assert (=> start!39310 (and (array_inv!8814 _values!549) e!248330)))

(declare-fun array_inv!8815 (array!25277) Bool)

(assert (=> start!39310 (array_inv!8815 _keys!709)))

(declare-fun b!415885 () Bool)

(declare-fun res!242098 () Bool)

(assert (=> b!415885 (=> (not res!242098) (not e!248324))))

(assert (=> b!415885 (= res!242098 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7023))))

(declare-fun mapNonEmpty!17703 () Bool)

(declare-fun tp!34236 () Bool)

(declare-fun e!248328 () Bool)

(assert (=> mapNonEmpty!17703 (= mapRes!17703 (and tp!34236 e!248328))))

(declare-fun mapKey!17703 () (_ BitVec 32))

(declare-fun mapRest!17703 () (Array (_ BitVec 32) ValueCell!5017))

(declare-fun mapValue!17703 () ValueCell!5017)

(assert (=> mapNonEmpty!17703 (= (arr!12086 _values!549) (store mapRest!17703 mapKey!17703 mapValue!17703))))

(declare-fun b!415886 () Bool)

(declare-fun res!242088 () Bool)

(assert (=> b!415886 (=> (not res!242088) (not e!248324))))

(assert (=> b!415886 (= res!242088 (and (= (size!12438 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12437 _keys!709) (size!12438 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415887 () Bool)

(declare-fun +!1177 (ListLongMap!5897 tuple2!6970) ListLongMap!5897)

(assert (=> b!415887 (= e!248326 (= call!28882 (+!1177 call!28883 (tuple2!6971 k!794 v!412))))))

(declare-fun b!415888 () Bool)

(declare-fun res!242099 () Bool)

(assert (=> b!415888 (=> (not res!242099) (not e!248324))))

(assert (=> b!415888 (= res!242099 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12437 _keys!709))))))

(declare-fun b!415889 () Bool)

(assert (=> b!415889 (= e!248330 (and e!248327 mapRes!17703))))

(declare-fun condMapEmpty!17703 () Bool)

(declare-fun mapDefault!17703 () ValueCell!5017)

