; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39504 () Bool)

(assert start!39504)

(declare-fun b_free!9763 () Bool)

(declare-fun b_next!9763 () Bool)

(assert (=> start!39504 (= b_free!9763 (not b_next!9763))))

(declare-fun tp!34817 () Bool)

(declare-fun b_and!17419 () Bool)

(assert (=> start!39504 (= tp!34817 b_and!17419)))

(declare-datatypes ((V!15659 0))(
  ( (V!15660 (val!5502 Int)) )
))
(declare-fun minValue!515 () V!15659)

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!29461 () Bool)

(declare-datatypes ((ValueCell!5114 0))(
  ( (ValueCellFull!5114 (v!7745 V!15659)) (EmptyCell!5114) )
))
(declare-datatypes ((array!25657 0))(
  ( (array!25658 (arr!12275 (Array (_ BitVec 32) ValueCell!5114)) (size!12627 (_ BitVec 32))) )
))
(declare-fun lt!193633 () array!25657)

(declare-fun zeroValue!515 () V!15659)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25659 0))(
  ( (array!25660 (arr!12276 (Array (_ BitVec 32) (_ BitVec 64))) (size!12628 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25659)

(declare-fun lt!193632 () array!25659)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7146 0))(
  ( (tuple2!7147 (_1!3583 (_ BitVec 64)) (_2!3583 V!15659)) )
))
(declare-datatypes ((List!7188 0))(
  ( (Nil!7185) (Cons!7184 (h!8040 tuple2!7146) (t!12624 List!7188)) )
))
(declare-datatypes ((ListLongMap!6073 0))(
  ( (ListLongMap!6074 (toList!3052 List!7188)) )
))
(declare-fun call!29465 () ListLongMap!6073)

(declare-fun c!55283 () Bool)

(declare-fun _values!549 () array!25657)

(declare-fun getCurrentListMapNoExtraKeys!1253 (array!25659 array!25657 (_ BitVec 32) (_ BitVec 32) V!15659 V!15659 (_ BitVec 32) Int) ListLongMap!6073)

(assert (=> bm!29461 (= call!29465 (getCurrentListMapNoExtraKeys!1253 (ite c!55283 _keys!709 lt!193632) (ite c!55283 _values!549 lt!193633) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421601 () Bool)

(declare-fun e!250944 () Bool)

(assert (=> b!421601 (= e!250944 true)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!193634 () V!15659)

(declare-fun lt!193627 () ListLongMap!6073)

(declare-fun lt!193635 () tuple2!7146)

(declare-fun +!1254 (ListLongMap!6073 tuple2!7146) ListLongMap!6073)

(assert (=> b!421601 (= (+!1254 lt!193627 lt!193635) (+!1254 (+!1254 lt!193627 (tuple2!7147 k!794 lt!193634)) lt!193635))))

(declare-fun lt!193625 () V!15659)

(assert (=> b!421601 (= lt!193635 (tuple2!7147 k!794 lt!193625))))

(declare-datatypes ((Unit!12411 0))(
  ( (Unit!12412) )
))
(declare-fun lt!193630 () Unit!12411)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!70 (ListLongMap!6073 (_ BitVec 64) V!15659 V!15659) Unit!12411)

(assert (=> b!421601 (= lt!193630 (addSameAsAddTwiceSameKeyDiffValues!70 lt!193627 k!794 lt!193634 lt!193625))))

(declare-fun lt!193628 () V!15659)

(declare-fun get!6107 (ValueCell!5114 V!15659) V!15659)

(assert (=> b!421601 (= lt!193634 (get!6107 (select (arr!12275 _values!549) from!863) lt!193628))))

(declare-fun lt!193629 () ListLongMap!6073)

(assert (=> b!421601 (= lt!193629 (+!1254 lt!193627 (tuple2!7147 (select (arr!12276 lt!193632) from!863) lt!193625)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15659)

(assert (=> b!421601 (= lt!193625 (get!6107 (select (store (arr!12275 _values!549) i!563 (ValueCellFull!5114 v!412)) from!863) lt!193628))))

(declare-fun dynLambda!732 (Int (_ BitVec 64)) V!15659)

(assert (=> b!421601 (= lt!193628 (dynLambda!732 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421601 (= lt!193627 (getCurrentListMapNoExtraKeys!1253 lt!193632 lt!193633 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421602 () Bool)

(declare-fun res!246174 () Bool)

(declare-fun e!250948 () Bool)

(assert (=> b!421602 (=> (not res!246174) (not e!250948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25659 (_ BitVec 32)) Bool)

(assert (=> b!421602 (= res!246174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421603 () Bool)

(declare-fun res!246162 () Bool)

(assert (=> b!421603 (=> (not res!246162) (not e!250948))))

(assert (=> b!421603 (= res!246162 (or (= (select (arr!12276 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12276 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421604 () Bool)

(declare-fun e!250950 () Bool)

(declare-fun call!29464 () ListLongMap!6073)

(assert (=> b!421604 (= e!250950 (= call!29465 call!29464))))

(declare-fun bm!29462 () Bool)

(assert (=> bm!29462 (= call!29464 (getCurrentListMapNoExtraKeys!1253 (ite c!55283 lt!193632 _keys!709) (ite c!55283 lt!193633 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421605 () Bool)

(declare-fun res!246163 () Bool)

(assert (=> b!421605 (=> (not res!246163) (not e!250948))))

(declare-datatypes ((List!7189 0))(
  ( (Nil!7186) (Cons!7185 (h!8041 (_ BitVec 64)) (t!12625 List!7189)) )
))
(declare-fun arrayNoDuplicates!0 (array!25659 (_ BitVec 32) List!7189) Bool)

(assert (=> b!421605 (= res!246163 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7186))))

(declare-fun b!421607 () Bool)

(declare-fun e!250945 () Bool)

(declare-fun e!250949 () Bool)

(declare-fun mapRes!17994 () Bool)

(assert (=> b!421607 (= e!250945 (and e!250949 mapRes!17994))))

(declare-fun condMapEmpty!17994 () Bool)

(declare-fun mapDefault!17994 () ValueCell!5114)

