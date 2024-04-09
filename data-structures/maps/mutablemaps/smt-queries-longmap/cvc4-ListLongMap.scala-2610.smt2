; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39490 () Bool)

(assert start!39490)

(declare-fun b_free!9749 () Bool)

(declare-fun b_next!9749 () Bool)

(assert (=> start!39490 (= b_free!9749 (not b_next!9749))))

(declare-fun tp!34775 () Bool)

(declare-fun b_and!17391 () Bool)

(assert (=> start!39490 (= tp!34775 b_and!17391)))

(declare-fun b!421188 () Bool)

(declare-fun e!250761 () Bool)

(assert (=> b!421188 (= e!250761 true)))

(declare-datatypes ((V!15639 0))(
  ( (V!15640 (val!5495 Int)) )
))
(declare-datatypes ((tuple2!7132 0))(
  ( (tuple2!7133 (_1!3576 (_ BitVec 64)) (_2!3576 V!15639)) )
))
(declare-datatypes ((List!7175 0))(
  ( (Nil!7172) (Cons!7171 (h!8027 tuple2!7132) (t!12597 List!7175)) )
))
(declare-datatypes ((ListLongMap!6059 0))(
  ( (ListLongMap!6060 (toList!3045 List!7175)) )
))
(declare-fun lt!193404 () ListLongMap!6059)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!193394 () tuple2!7132)

(declare-fun lt!193399 () V!15639)

(declare-fun +!1248 (ListLongMap!6059 tuple2!7132) ListLongMap!6059)

(assert (=> b!421188 (= (+!1248 lt!193404 lt!193394) (+!1248 (+!1248 lt!193404 (tuple2!7133 k!794 lt!193399)) lt!193394))))

(declare-fun lt!193396 () V!15639)

(assert (=> b!421188 (= lt!193394 (tuple2!7133 k!794 lt!193396))))

(declare-datatypes ((Unit!12397 0))(
  ( (Unit!12398) )
))
(declare-fun lt!193400 () Unit!12397)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!64 (ListLongMap!6059 (_ BitVec 64) V!15639 V!15639) Unit!12397)

(assert (=> b!421188 (= lt!193400 (addSameAsAddTwiceSameKeyDiffValues!64 lt!193404 k!794 lt!193399 lt!193396))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5107 0))(
  ( (ValueCellFull!5107 (v!7738 V!15639)) (EmptyCell!5107) )
))
(declare-datatypes ((array!25629 0))(
  ( (array!25630 (arr!12261 (Array (_ BitVec 32) ValueCell!5107)) (size!12613 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25629)

(declare-fun lt!193397 () V!15639)

(declare-fun get!6095 (ValueCell!5107 V!15639) V!15639)

(assert (=> b!421188 (= lt!193399 (get!6095 (select (arr!12261 _values!549) from!863) lt!193397))))

(declare-datatypes ((array!25631 0))(
  ( (array!25632 (arr!12262 (Array (_ BitVec 32) (_ BitVec 64))) (size!12614 (_ BitVec 32))) )
))
(declare-fun lt!193403 () array!25631)

(declare-fun lt!193395 () ListLongMap!6059)

(assert (=> b!421188 (= lt!193395 (+!1248 lt!193404 (tuple2!7133 (select (arr!12262 lt!193403) from!863) lt!193396)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15639)

(assert (=> b!421188 (= lt!193396 (get!6095 (select (store (arr!12261 _values!549) i!563 (ValueCellFull!5107 v!412)) from!863) lt!193397))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!726 (Int (_ BitVec 64)) V!15639)

(assert (=> b!421188 (= lt!193397 (dynLambda!726 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193402 () array!25629)

(declare-fun minValue!515 () V!15639)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15639)

(declare-fun getCurrentListMapNoExtraKeys!1246 (array!25631 array!25629 (_ BitVec 32) (_ BitVec 32) V!15639 V!15639 (_ BitVec 32) Int) ListLongMap!6059)

(assert (=> b!421188 (= lt!193404 (getCurrentListMapNoExtraKeys!1246 lt!193403 lt!193402 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421189 () Bool)

(declare-fun e!250762 () Bool)

(declare-fun e!250759 () Bool)

(assert (=> b!421189 (= e!250762 e!250759)))

(declare-fun res!245867 () Bool)

(assert (=> b!421189 (=> (not res!245867) (not e!250759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25631 (_ BitVec 32)) Bool)

(assert (=> b!421189 (= res!245867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193403 mask!1025))))

(declare-fun _keys!709 () array!25631)

(assert (=> b!421189 (= lt!193403 (array!25632 (store (arr!12262 _keys!709) i!563 k!794) (size!12614 _keys!709)))))

(declare-fun b!421190 () Bool)

(declare-fun e!250760 () Bool)

(declare-fun e!250757 () Bool)

(declare-fun mapRes!17973 () Bool)

(assert (=> b!421190 (= e!250760 (and e!250757 mapRes!17973))))

(declare-fun condMapEmpty!17973 () Bool)

(declare-fun mapDefault!17973 () ValueCell!5107)

