; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39214 () Bool)

(assert start!39214)

(declare-fun b_free!9473 () Bool)

(declare-fun b_next!9473 () Bool)

(assert (=> start!39214 (= b_free!9473 (not b_next!9473))))

(declare-fun tp!33948 () Bool)

(declare-fun b_and!16877 () Bool)

(assert (=> start!39214 (= tp!33948 b_and!16877)))

(declare-fun b!413130 () Bool)

(declare-fun e!247076 () Bool)

(declare-fun e!247074 () Bool)

(assert (=> b!413130 (= e!247076 e!247074)))

(declare-fun res!240124 () Bool)

(assert (=> b!413130 (=> (not res!240124) (not e!247074))))

(declare-datatypes ((array!25089 0))(
  ( (array!25090 (arr!11991 (Array (_ BitVec 32) (_ BitVec 64))) (size!12343 (_ BitVec 32))) )
))
(declare-fun lt!189656 () array!25089)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25089 (_ BitVec 32)) Bool)

(assert (=> b!413130 (= res!240124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189656 mask!1025))))

(declare-fun _keys!709 () array!25089)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413130 (= lt!189656 (array!25090 (store (arr!11991 _keys!709) i!563 k!794) (size!12343 _keys!709)))))

(declare-fun b!413131 () Bool)

(declare-fun res!240118 () Bool)

(assert (=> b!413131 (=> (not res!240118) (not e!247076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413131 (= res!240118 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17559 () Bool)

(declare-fun mapRes!17559 () Bool)

(assert (=> mapIsEmpty!17559 mapRes!17559))

(declare-fun b!413132 () Bool)

(declare-fun res!240125 () Bool)

(assert (=> b!413132 (=> (not res!240125) (not e!247074))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!413132 (= res!240125 (bvsle from!863 i!563))))

(declare-fun res!240126 () Bool)

(assert (=> start!39214 (=> (not res!240126) (not e!247076))))

(assert (=> start!39214 (= res!240126 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12343 _keys!709))))))

(assert (=> start!39214 e!247076))

(declare-fun tp_is_empty!10625 () Bool)

(assert (=> start!39214 tp_is_empty!10625))

(assert (=> start!39214 tp!33948))

(assert (=> start!39214 true))

(declare-datatypes ((V!15271 0))(
  ( (V!15272 (val!5357 Int)) )
))
(declare-datatypes ((ValueCell!4969 0))(
  ( (ValueCellFull!4969 (v!7600 V!15271)) (EmptyCell!4969) )
))
(declare-datatypes ((array!25091 0))(
  ( (array!25092 (arr!11992 (Array (_ BitVec 32) ValueCell!4969)) (size!12344 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25091)

(declare-fun e!247077 () Bool)

(declare-fun array_inv!8744 (array!25091) Bool)

(assert (=> start!39214 (and (array_inv!8744 _values!549) e!247077)))

(declare-fun array_inv!8745 (array!25089) Bool)

(assert (=> start!39214 (array_inv!8745 _keys!709)))

(declare-fun b!413133 () Bool)

(declare-fun e!247079 () Bool)

(declare-datatypes ((tuple2!6882 0))(
  ( (tuple2!6883 (_1!3451 (_ BitVec 64)) (_2!3451 V!15271)) )
))
(declare-datatypes ((List!6943 0))(
  ( (Nil!6940) (Cons!6939 (h!7795 tuple2!6882) (t!12125 List!6943)) )
))
(declare-datatypes ((ListLongMap!5809 0))(
  ( (ListLongMap!5810 (toList!2920 List!6943)) )
))
(declare-fun call!28595 () ListLongMap!5809)

(declare-fun call!28594 () ListLongMap!5809)

(assert (=> b!413133 (= e!247079 (= call!28595 call!28594))))

(declare-fun b!413134 () Bool)

(declare-fun e!247081 () Bool)

(assert (=> b!413134 (= e!247074 e!247081)))

(declare-fun res!240123 () Bool)

(assert (=> b!413134 (=> (not res!240123) (not e!247081))))

(assert (=> b!413134 (= res!240123 (= from!863 i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15271)

(declare-fun lt!189659 () array!25091)

(declare-fun lt!189658 () ListLongMap!5809)

(declare-fun minValue!515 () V!15271)

(declare-fun getCurrentListMapNoExtraKeys!1129 (array!25089 array!25091 (_ BitVec 32) (_ BitVec 32) V!15271 V!15271 (_ BitVec 32) Int) ListLongMap!5809)

(assert (=> b!413134 (= lt!189658 (getCurrentListMapNoExtraKeys!1129 lt!189656 lt!189659 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15271)

(assert (=> b!413134 (= lt!189659 (array!25092 (store (arr!11992 _values!549) i!563 (ValueCellFull!4969 v!412)) (size!12344 _values!549)))))

(declare-fun lt!189660 () ListLongMap!5809)

(assert (=> b!413134 (= lt!189660 (getCurrentListMapNoExtraKeys!1129 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413135 () Bool)

(declare-fun +!1143 (ListLongMap!5809 tuple2!6882) ListLongMap!5809)

(assert (=> b!413135 (= e!247079 (= call!28594 (+!1143 call!28595 (tuple2!6883 k!794 v!412))))))

(declare-fun c!54848 () Bool)

(declare-fun bm!28591 () Bool)

(assert (=> bm!28591 (= call!28594 (getCurrentListMapNoExtraKeys!1129 (ite c!54848 lt!189656 _keys!709) (ite c!54848 lt!189659 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413136 () Bool)

(declare-fun res!240120 () Bool)

(assert (=> b!413136 (=> (not res!240120) (not e!247076))))

(assert (=> b!413136 (= res!240120 (and (= (size!12344 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12343 _keys!709) (size!12344 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413137 () Bool)

(declare-fun res!240127 () Bool)

(assert (=> b!413137 (=> (not res!240127) (not e!247076))))

(declare-fun arrayContainsKey!0 (array!25089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413137 (= res!240127 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413138 () Bool)

(declare-fun res!240117 () Bool)

(assert (=> b!413138 (=> (not res!240117) (not e!247076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413138 (= res!240117 (validKeyInArray!0 k!794))))

(declare-fun b!413139 () Bool)

(declare-fun res!240119 () Bool)

(assert (=> b!413139 (=> (not res!240119) (not e!247076))))

(declare-datatypes ((List!6944 0))(
  ( (Nil!6941) (Cons!6940 (h!7796 (_ BitVec 64)) (t!12126 List!6944)) )
))
(declare-fun arrayNoDuplicates!0 (array!25089 (_ BitVec 32) List!6944) Bool)

(assert (=> b!413139 (= res!240119 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6941))))

(declare-fun b!413140 () Bool)

(declare-fun res!240121 () Bool)

(assert (=> b!413140 (=> (not res!240121) (not e!247076))))

(assert (=> b!413140 (= res!240121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413141 () Bool)

(declare-fun e!247080 () Bool)

(assert (=> b!413141 (= e!247080 tp_is_empty!10625)))

(declare-fun b!413142 () Bool)

(declare-fun res!240128 () Bool)

(assert (=> b!413142 (=> (not res!240128) (not e!247076))))

(assert (=> b!413142 (= res!240128 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12343 _keys!709))))))

(declare-fun mapNonEmpty!17559 () Bool)

(declare-fun tp!33947 () Bool)

(assert (=> mapNonEmpty!17559 (= mapRes!17559 (and tp!33947 e!247080))))

(declare-fun mapValue!17559 () ValueCell!4969)

(declare-fun mapKey!17559 () (_ BitVec 32))

(declare-fun mapRest!17559 () (Array (_ BitVec 32) ValueCell!4969))

(assert (=> mapNonEmpty!17559 (= (arr!11992 _values!549) (store mapRest!17559 mapKey!17559 mapValue!17559))))

(declare-fun b!413143 () Bool)

(assert (=> b!413143 (= e!247081 (not true))))

(assert (=> b!413143 e!247079))

(assert (=> b!413143 (= c!54848 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12183 0))(
  ( (Unit!12184) )
))
(declare-fun lt!189657 () Unit!12183)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!354 (array!25089 array!25091 (_ BitVec 32) (_ BitVec 32) V!15271 V!15271 (_ BitVec 32) (_ BitVec 64) V!15271 (_ BitVec 32) Int) Unit!12183)

(assert (=> b!413143 (= lt!189657 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!354 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413144 () Bool)

(declare-fun res!240129 () Bool)

(assert (=> b!413144 (=> (not res!240129) (not e!247074))))

(assert (=> b!413144 (= res!240129 (arrayNoDuplicates!0 lt!189656 #b00000000000000000000000000000000 Nil!6941))))

(declare-fun bm!28592 () Bool)

(assert (=> bm!28592 (= call!28595 (getCurrentListMapNoExtraKeys!1129 (ite c!54848 _keys!709 lt!189656) (ite c!54848 _values!549 lt!189659) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413145 () Bool)

(declare-fun e!247075 () Bool)

(assert (=> b!413145 (= e!247075 tp_is_empty!10625)))

(declare-fun b!413146 () Bool)

(declare-fun res!240122 () Bool)

(assert (=> b!413146 (=> (not res!240122) (not e!247076))))

(assert (=> b!413146 (= res!240122 (or (= (select (arr!11991 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11991 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413147 () Bool)

(assert (=> b!413147 (= e!247077 (and e!247075 mapRes!17559))))

(declare-fun condMapEmpty!17559 () Bool)

(declare-fun mapDefault!17559 () ValueCell!4969)

