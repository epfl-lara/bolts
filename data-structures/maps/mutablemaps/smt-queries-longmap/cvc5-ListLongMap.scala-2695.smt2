; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39996 () Bool)

(assert start!39996)

(declare-fun b_free!10255 () Bool)

(declare-fun b_next!10255 () Bool)

(assert (=> start!39996 (= b_free!10255 (not b_next!10255))))

(declare-fun tp!36293 () Bool)

(declare-fun b_and!18187 () Bool)

(assert (=> start!39996 (= tp!36293 b_and!18187)))

(declare-fun b!434911 () Bool)

(declare-fun e!256981 () Bool)

(declare-fun e!256979 () Bool)

(assert (=> b!434911 (= e!256981 e!256979)))

(declare-fun res!256269 () Bool)

(assert (=> b!434911 (=> (not res!256269) (not e!256979))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434911 (= res!256269 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16315 0))(
  ( (V!16316 (val!5748 Int)) )
))
(declare-datatypes ((tuple2!7540 0))(
  ( (tuple2!7541 (_1!3780 (_ BitVec 64)) (_2!3780 V!16315)) )
))
(declare-datatypes ((List!7587 0))(
  ( (Nil!7584) (Cons!7583 (h!8439 tuple2!7540) (t!13299 List!7587)) )
))
(declare-datatypes ((ListLongMap!6467 0))(
  ( (ListLongMap!6468 (toList!3249 List!7587)) )
))
(declare-fun lt!200212 () ListLongMap!6467)

(declare-fun minValue!515 () V!16315)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16315)

(declare-datatypes ((array!26619 0))(
  ( (array!26620 (arr!12756 (Array (_ BitVec 32) (_ BitVec 64))) (size!13108 (_ BitVec 32))) )
))
(declare-fun lt!200207 () array!26619)

(declare-datatypes ((ValueCell!5360 0))(
  ( (ValueCellFull!5360 (v!7991 V!16315)) (EmptyCell!5360) )
))
(declare-datatypes ((array!26621 0))(
  ( (array!26622 (arr!12757 (Array (_ BitVec 32) ValueCell!5360)) (size!13109 (_ BitVec 32))) )
))
(declare-fun lt!200216 () array!26621)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1433 (array!26619 array!26621 (_ BitVec 32) (_ BitVec 32) V!16315 V!16315 (_ BitVec 32) Int) ListLongMap!6467)

(assert (=> b!434911 (= lt!200212 (getCurrentListMapNoExtraKeys!1433 lt!200207 lt!200216 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26621)

(declare-fun v!412 () V!16315)

(assert (=> b!434911 (= lt!200216 (array!26622 (store (arr!12757 _values!549) i!563 (ValueCellFull!5360 v!412)) (size!13109 _values!549)))))

(declare-fun _keys!709 () array!26619)

(declare-fun lt!200215 () ListLongMap!6467)

(assert (=> b!434911 (= lt!200215 (getCurrentListMapNoExtraKeys!1433 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434912 () Bool)

(declare-fun e!256984 () Bool)

(declare-fun tp_is_empty!11407 () Bool)

(assert (=> b!434912 (= e!256984 tp_is_empty!11407)))

(declare-fun b!434913 () Bool)

(declare-fun e!256977 () Bool)

(assert (=> b!434913 (= e!256977 tp_is_empty!11407)))

(declare-fun b!434914 () Bool)

(declare-fun e!256983 () Bool)

(declare-fun e!256982 () Bool)

(assert (=> b!434914 (= e!256983 e!256982)))

(declare-fun res!256262 () Bool)

(assert (=> b!434914 (=> res!256262 e!256982)))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!434914 (= res!256262 (= k!794 (select (arr!12756 _keys!709) from!863)))))

(assert (=> b!434914 (not (= (select (arr!12756 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12866 0))(
  ( (Unit!12867) )
))
(declare-fun lt!200205 () Unit!12866)

(declare-fun e!256975 () Unit!12866)

(assert (=> b!434914 (= lt!200205 e!256975)))

(declare-fun c!55643 () Bool)

(assert (=> b!434914 (= c!55643 (= (select (arr!12756 _keys!709) from!863) k!794))))

(declare-fun lt!200217 () ListLongMap!6467)

(assert (=> b!434914 (= lt!200212 lt!200217)))

(declare-fun lt!200208 () ListLongMap!6467)

(declare-fun lt!200206 () tuple2!7540)

(declare-fun +!1394 (ListLongMap!6467 tuple2!7540) ListLongMap!6467)

(assert (=> b!434914 (= lt!200217 (+!1394 lt!200208 lt!200206))))

(declare-fun lt!200203 () V!16315)

(assert (=> b!434914 (= lt!200206 (tuple2!7541 (select (arr!12756 _keys!709) from!863) lt!200203))))

(declare-fun get!6363 (ValueCell!5360 V!16315) V!16315)

(declare-fun dynLambda!824 (Int (_ BitVec 64)) V!16315)

(assert (=> b!434914 (= lt!200203 (get!6363 (select (arr!12757 _values!549) from!863) (dynLambda!824 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434915 () Bool)

(declare-fun res!256275 () Bool)

(declare-fun e!256978 () Bool)

(assert (=> b!434915 (=> (not res!256275) (not e!256978))))

(declare-fun arrayContainsKey!0 (array!26619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434915 (= res!256275 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18732 () Bool)

(declare-fun mapRes!18732 () Bool)

(declare-fun tp!36294 () Bool)

(assert (=> mapNonEmpty!18732 (= mapRes!18732 (and tp!36294 e!256977))))

(declare-fun mapValue!18732 () ValueCell!5360)

(declare-fun mapRest!18732 () (Array (_ BitVec 32) ValueCell!5360))

(declare-fun mapKey!18732 () (_ BitVec 32))

(assert (=> mapNonEmpty!18732 (= (arr!12757 _values!549) (store mapRest!18732 mapKey!18732 mapValue!18732))))

(declare-fun b!434916 () Bool)

(declare-fun res!256268 () Bool)

(assert (=> b!434916 (=> (not res!256268) (not e!256978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434916 (= res!256268 (validKeyInArray!0 k!794))))

(declare-fun b!434917 () Bool)

(declare-fun res!256263 () Bool)

(assert (=> b!434917 (=> (not res!256263) (not e!256978))))

(declare-datatypes ((List!7588 0))(
  ( (Nil!7585) (Cons!7584 (h!8440 (_ BitVec 64)) (t!13300 List!7588)) )
))
(declare-fun arrayNoDuplicates!0 (array!26619 (_ BitVec 32) List!7588) Bool)

(assert (=> b!434917 (= res!256263 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7585))))

(declare-fun b!434918 () Bool)

(assert (=> b!434918 (= e!256979 (not e!256983))))

(declare-fun res!256273 () Bool)

(assert (=> b!434918 (=> res!256273 e!256983)))

(assert (=> b!434918 (= res!256273 (not (validKeyInArray!0 (select (arr!12756 _keys!709) from!863))))))

(declare-fun lt!200210 () ListLongMap!6467)

(assert (=> b!434918 (= lt!200210 lt!200208)))

(declare-fun lt!200204 () ListLongMap!6467)

(declare-fun lt!200211 () tuple2!7540)

(assert (=> b!434918 (= lt!200208 (+!1394 lt!200204 lt!200211))))

(assert (=> b!434918 (= lt!200210 (getCurrentListMapNoExtraKeys!1433 lt!200207 lt!200216 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!434918 (= lt!200211 (tuple2!7541 k!794 v!412))))

(assert (=> b!434918 (= lt!200204 (getCurrentListMapNoExtraKeys!1433 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200209 () Unit!12866)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!575 (array!26619 array!26621 (_ BitVec 32) (_ BitVec 32) V!16315 V!16315 (_ BitVec 32) (_ BitVec 64) V!16315 (_ BitVec 32) Int) Unit!12866)

(assert (=> b!434918 (= lt!200209 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!575 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434919 () Bool)

(declare-fun res!256270 () Bool)

(assert (=> b!434919 (=> (not res!256270) (not e!256978))))

(assert (=> b!434919 (= res!256270 (or (= (select (arr!12756 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12756 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434920 () Bool)

(declare-fun res!256266 () Bool)

(assert (=> b!434920 (=> (not res!256266) (not e!256978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26619 (_ BitVec 32)) Bool)

(assert (=> b!434920 (= res!256266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434922 () Bool)

(declare-fun res!256265 () Bool)

(assert (=> b!434922 (=> (not res!256265) (not e!256978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434922 (= res!256265 (validMask!0 mask!1025))))

(declare-fun b!434923 () Bool)

(declare-fun res!256264 () Bool)

(assert (=> b!434923 (=> (not res!256264) (not e!256978))))

(assert (=> b!434923 (= res!256264 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13108 _keys!709))))))

(declare-fun b!434924 () Bool)

(declare-fun res!256274 () Bool)

(assert (=> b!434924 (=> (not res!256274) (not e!256981))))

(assert (=> b!434924 (= res!256274 (bvsle from!863 i!563))))

(declare-fun b!434925 () Bool)

(assert (=> b!434925 (= e!256982 true)))

(assert (=> b!434925 (= lt!200217 (+!1394 (+!1394 lt!200204 lt!200206) lt!200211))))

(declare-fun lt!200213 () Unit!12866)

(declare-fun addCommutativeForDiffKeys!400 (ListLongMap!6467 (_ BitVec 64) V!16315 (_ BitVec 64) V!16315) Unit!12866)

(assert (=> b!434925 (= lt!200213 (addCommutativeForDiffKeys!400 lt!200204 k!794 v!412 (select (arr!12756 _keys!709) from!863) lt!200203))))

(declare-fun b!434926 () Bool)

(declare-fun Unit!12868 () Unit!12866)

(assert (=> b!434926 (= e!256975 Unit!12868)))

(declare-fun b!434927 () Bool)

(declare-fun Unit!12869 () Unit!12866)

(assert (=> b!434927 (= e!256975 Unit!12869)))

(declare-fun lt!200214 () Unit!12866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26619 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12866)

(assert (=> b!434927 (= lt!200214 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434927 false))

(declare-fun mapIsEmpty!18732 () Bool)

(assert (=> mapIsEmpty!18732 mapRes!18732))

(declare-fun b!434928 () Bool)

(declare-fun e!256980 () Bool)

(assert (=> b!434928 (= e!256980 (and e!256984 mapRes!18732))))

(declare-fun condMapEmpty!18732 () Bool)

(declare-fun mapDefault!18732 () ValueCell!5360)

