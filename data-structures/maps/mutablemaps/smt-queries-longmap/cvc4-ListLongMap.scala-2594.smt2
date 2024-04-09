; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39394 () Bool)

(assert start!39394)

(declare-fun b_free!9653 () Bool)

(declare-fun b_next!9653 () Bool)

(assert (=> start!39394 (= b_free!9653 (not b_next!9653))))

(declare-fun tp!34487 () Bool)

(declare-fun b_and!17199 () Bool)

(assert (=> start!39394 (= tp!34487 b_and!17199)))

(declare-fun b!418357 () Bool)

(declare-fun e!249464 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((V!15511 0))(
  ( (V!15512 (val!5447 Int)) )
))
(declare-datatypes ((tuple2!7050 0))(
  ( (tuple2!7051 (_1!3535 (_ BitVec 64)) (_2!3535 V!15511)) )
))
(declare-datatypes ((List!7101 0))(
  ( (Nil!7098) (Cons!7097 (h!7953 tuple2!7050) (t!12427 List!7101)) )
))
(declare-datatypes ((ListLongMap!5977 0))(
  ( (ListLongMap!5978 (toList!3004 List!7101)) )
))
(declare-fun call!29135 () ListLongMap!5977)

(declare-fun call!29134 () ListLongMap!5977)

(declare-fun v!412 () V!15511)

(declare-fun +!1213 (ListLongMap!5977 tuple2!7050) ListLongMap!5977)

(assert (=> b!418357 (= e!249464 (= call!29135 (+!1213 call!29134 (tuple2!7051 k!794 v!412))))))

(declare-fun b!418358 () Bool)

(declare-fun res!243862 () Bool)

(declare-fun e!249462 () Bool)

(assert (=> b!418358 (=> (not res!243862) (not e!249462))))

(declare-datatypes ((array!25443 0))(
  ( (array!25444 (arr!12168 (Array (_ BitVec 32) (_ BitVec 64))) (size!12520 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25443)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418358 (= res!243862 (or (= (select (arr!12168 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12168 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418359 () Bool)

(declare-fun e!249465 () Bool)

(assert (=> b!418359 (= e!249465 true)))

(declare-fun lt!191811 () V!15511)

(declare-fun lt!191810 () ListLongMap!5977)

(declare-fun lt!191816 () tuple2!7050)

(assert (=> b!418359 (= (+!1213 lt!191810 lt!191816) (+!1213 (+!1213 lt!191810 (tuple2!7051 k!794 lt!191811)) lt!191816))))

(declare-fun lt!191815 () V!15511)

(assert (=> b!418359 (= lt!191816 (tuple2!7051 k!794 lt!191815))))

(declare-datatypes ((Unit!12327 0))(
  ( (Unit!12328) )
))
(declare-fun lt!191818 () Unit!12327)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!36 (ListLongMap!5977 (_ BitVec 64) V!15511 V!15511) Unit!12327)

(assert (=> b!418359 (= lt!191818 (addSameAsAddTwiceSameKeyDiffValues!36 lt!191810 k!794 lt!191811 lt!191815))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!191820 () V!15511)

(declare-datatypes ((ValueCell!5059 0))(
  ( (ValueCellFull!5059 (v!7690 V!15511)) (EmptyCell!5059) )
))
(declare-datatypes ((array!25445 0))(
  ( (array!25446 (arr!12169 (Array (_ BitVec 32) ValueCell!5059)) (size!12521 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25445)

(declare-fun get!6035 (ValueCell!5059 V!15511) V!15511)

(assert (=> b!418359 (= lt!191811 (get!6035 (select (arr!12169 _values!549) from!863) lt!191820))))

(declare-fun lt!191814 () array!25443)

(declare-fun lt!191813 () ListLongMap!5977)

(assert (=> b!418359 (= lt!191813 (+!1213 lt!191810 (tuple2!7051 (select (arr!12168 lt!191814) from!863) lt!191815)))))

(assert (=> b!418359 (= lt!191815 (get!6035 (select (store (arr!12169 _values!549) i!563 (ValueCellFull!5059 v!412)) from!863) lt!191820))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!698 (Int (_ BitVec 64)) V!15511)

(assert (=> b!418359 (= lt!191820 (dynLambda!698 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!191819 () array!25445)

(declare-fun zeroValue!515 () V!15511)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!15511)

(declare-fun getCurrentListMapNoExtraKeys!1207 (array!25443 array!25445 (_ BitVec 32) (_ BitVec 32) V!15511 V!15511 (_ BitVec 32) Int) ListLongMap!5977)

(assert (=> b!418359 (= lt!191810 (getCurrentListMapNoExtraKeys!1207 lt!191814 lt!191819 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418360 () Bool)

(declare-fun res!243863 () Bool)

(assert (=> b!418360 (=> (not res!243863) (not e!249462))))

(declare-datatypes ((List!7102 0))(
  ( (Nil!7099) (Cons!7098 (h!7954 (_ BitVec 64)) (t!12428 List!7102)) )
))
(declare-fun arrayNoDuplicates!0 (array!25443 (_ BitVec 32) List!7102) Bool)

(assert (=> b!418360 (= res!243863 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7099))))

(declare-fun b!418361 () Bool)

(declare-fun e!249459 () Bool)

(declare-fun tp_is_empty!10805 () Bool)

(assert (=> b!418361 (= e!249459 tp_is_empty!10805)))

(declare-fun b!418362 () Bool)

(declare-fun e!249458 () Bool)

(assert (=> b!418362 (= e!249458 (not e!249465))))

(declare-fun res!243852 () Bool)

(assert (=> b!418362 (=> res!243852 e!249465)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418362 (= res!243852 (validKeyInArray!0 (select (arr!12168 _keys!709) from!863)))))

(assert (=> b!418362 e!249464))

(declare-fun c!55118 () Bool)

(assert (=> b!418362 (= c!55118 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191812 () Unit!12327)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!421 (array!25443 array!25445 (_ BitVec 32) (_ BitVec 32) V!15511 V!15511 (_ BitVec 32) (_ BitVec 64) V!15511 (_ BitVec 32) Int) Unit!12327)

(assert (=> b!418362 (= lt!191812 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!421 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418363 () Bool)

(declare-fun e!249466 () Bool)

(assert (=> b!418363 (= e!249466 e!249458)))

(declare-fun res!243853 () Bool)

(assert (=> b!418363 (=> (not res!243853) (not e!249458))))

(assert (=> b!418363 (= res!243853 (= from!863 i!563))))

(assert (=> b!418363 (= lt!191813 (getCurrentListMapNoExtraKeys!1207 lt!191814 lt!191819 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418363 (= lt!191819 (array!25446 (store (arr!12169 _values!549) i!563 (ValueCellFull!5059 v!412)) (size!12521 _values!549)))))

(declare-fun lt!191817 () ListLongMap!5977)

(assert (=> b!418363 (= lt!191817 (getCurrentListMapNoExtraKeys!1207 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418364 () Bool)

(declare-fun res!243860 () Bool)

(assert (=> b!418364 (=> (not res!243860) (not e!249462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25443 (_ BitVec 32)) Bool)

(assert (=> b!418364 (= res!243860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29131 () Bool)

(assert (=> bm!29131 (= call!29135 (getCurrentListMapNoExtraKeys!1207 (ite c!55118 lt!191814 _keys!709) (ite c!55118 lt!191819 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418365 () Bool)

(declare-fun res!243859 () Bool)

(assert (=> b!418365 (=> (not res!243859) (not e!249466))))

(assert (=> b!418365 (= res!243859 (bvsle from!863 i!563))))

(declare-fun res!243861 () Bool)

(assert (=> start!39394 (=> (not res!243861) (not e!249462))))

(assert (=> start!39394 (= res!243861 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12520 _keys!709))))))

(assert (=> start!39394 e!249462))

(assert (=> start!39394 tp_is_empty!10805))

(assert (=> start!39394 tp!34487))

(assert (=> start!39394 true))

(declare-fun e!249463 () Bool)

(declare-fun array_inv!8874 (array!25445) Bool)

(assert (=> start!39394 (and (array_inv!8874 _values!549) e!249463)))

(declare-fun array_inv!8875 (array!25443) Bool)

(assert (=> start!39394 (array_inv!8875 _keys!709)))

(declare-fun b!418356 () Bool)

(declare-fun e!249460 () Bool)

(assert (=> b!418356 (= e!249460 tp_is_empty!10805)))

(declare-fun b!418366 () Bool)

(declare-fun res!243851 () Bool)

(assert (=> b!418366 (=> (not res!243851) (not e!249466))))

(assert (=> b!418366 (= res!243851 (arrayNoDuplicates!0 lt!191814 #b00000000000000000000000000000000 Nil!7099))))

(declare-fun b!418367 () Bool)

(declare-fun mapRes!17829 () Bool)

(assert (=> b!418367 (= e!249463 (and e!249459 mapRes!17829))))

(declare-fun condMapEmpty!17829 () Bool)

(declare-fun mapDefault!17829 () ValueCell!5059)

