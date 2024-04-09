; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39262 () Bool)

(assert start!39262)

(declare-fun b_free!9521 () Bool)

(declare-fun b_next!9521 () Bool)

(assert (=> start!39262 (= b_free!9521 (not b_next!9521))))

(declare-fun tp!34091 () Bool)

(declare-fun b_and!16935 () Bool)

(assert (=> start!39262 (= tp!34091 b_and!16935)))

(declare-datatypes ((V!15335 0))(
  ( (V!15336 (val!5381 Int)) )
))
(declare-datatypes ((tuple2!6928 0))(
  ( (tuple2!6929 (_1!3474 (_ BitVec 64)) (_2!3474 V!15335)) )
))
(declare-datatypes ((List!6985 0))(
  ( (Nil!6982) (Cons!6981 (h!7837 tuple2!6928) (t!12179 List!6985)) )
))
(declare-datatypes ((ListLongMap!5855 0))(
  ( (ListLongMap!5856 (toList!2943 List!6985)) )
))
(declare-fun call!28738 () ListLongMap!5855)

(declare-fun b!414462 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!247684 () Bool)

(declare-fun call!28739 () ListLongMap!5855)

(declare-fun v!412 () V!15335)

(declare-fun +!1159 (ListLongMap!5855 tuple2!6928) ListLongMap!5855)

(assert (=> b!414462 (= e!247684 (= call!28738 (+!1159 call!28739 (tuple2!6929 k!794 v!412))))))

(declare-fun b!414463 () Bool)

(declare-fun res!241081 () Bool)

(declare-fun e!247683 () Bool)

(assert (=> b!414463 (=> (not res!241081) (not e!247683))))

(declare-datatypes ((array!25183 0))(
  ( (array!25184 (arr!12038 (Array (_ BitVec 32) (_ BitVec 64))) (size!12390 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25183)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414463 (= res!241081 (or (= (select (arr!12038 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12038 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414464 () Bool)

(declare-fun e!247682 () Bool)

(declare-fun e!247677 () Bool)

(assert (=> b!414464 (= e!247682 e!247677)))

(declare-fun res!241088 () Bool)

(assert (=> b!414464 (=> (not res!241088) (not e!247677))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!414464 (= res!241088 (= from!863 i!563))))

(declare-fun minValue!515 () V!15335)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190020 () array!25183)

(declare-datatypes ((ValueCell!4993 0))(
  ( (ValueCellFull!4993 (v!7624 V!15335)) (EmptyCell!4993) )
))
(declare-datatypes ((array!25185 0))(
  ( (array!25186 (arr!12039 (Array (_ BitVec 32) ValueCell!4993)) (size!12391 (_ BitVec 32))) )
))
(declare-fun lt!190016 () array!25185)

(declare-fun zeroValue!515 () V!15335)

(declare-fun lt!190017 () ListLongMap!5855)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1150 (array!25183 array!25185 (_ BitVec 32) (_ BitVec 32) V!15335 V!15335 (_ BitVec 32) Int) ListLongMap!5855)

(assert (=> b!414464 (= lt!190017 (getCurrentListMapNoExtraKeys!1150 lt!190020 lt!190016 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25185)

(assert (=> b!414464 (= lt!190016 (array!25186 (store (arr!12039 _values!549) i!563 (ValueCellFull!4993 v!412)) (size!12391 _values!549)))))

(declare-fun lt!190019 () ListLongMap!5855)

(assert (=> b!414464 (= lt!190019 (getCurrentListMapNoExtraKeys!1150 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!414465 () Bool)

(declare-fun e!247680 () Bool)

(assert (=> b!414465 (= e!247677 (not e!247680))))

(declare-fun res!241080 () Bool)

(assert (=> b!414465 (=> res!241080 e!247680)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414465 (= res!241080 (validKeyInArray!0 (select (arr!12038 _keys!709) from!863)))))

(assert (=> b!414465 e!247684))

(declare-fun c!54920 () Bool)

(assert (=> b!414465 (= c!54920 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12221 0))(
  ( (Unit!12222) )
))
(declare-fun lt!190018 () Unit!12221)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!373 (array!25183 array!25185 (_ BitVec 32) (_ BitVec 32) V!15335 V!15335 (_ BitVec 32) (_ BitVec 64) V!15335 (_ BitVec 32) Int) Unit!12221)

(assert (=> b!414465 (= lt!190018 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!373 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414466 () Bool)

(declare-fun res!241089 () Bool)

(assert (=> b!414466 (=> (not res!241089) (not e!247683))))

(declare-datatypes ((List!6986 0))(
  ( (Nil!6983) (Cons!6982 (h!7838 (_ BitVec 64)) (t!12180 List!6986)) )
))
(declare-fun arrayNoDuplicates!0 (array!25183 (_ BitVec 32) List!6986) Bool)

(assert (=> b!414466 (= res!241089 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6983))))

(declare-fun b!414468 () Bool)

(assert (=> b!414468 (= e!247683 e!247682)))

(declare-fun res!241086 () Bool)

(assert (=> b!414468 (=> (not res!241086) (not e!247682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25183 (_ BitVec 32)) Bool)

(assert (=> b!414468 (= res!241086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190020 mask!1025))))

(assert (=> b!414468 (= lt!190020 (array!25184 (store (arr!12038 _keys!709) i!563 k!794) (size!12390 _keys!709)))))

(declare-fun b!414469 () Bool)

(declare-fun res!241090 () Bool)

(assert (=> b!414469 (=> (not res!241090) (not e!247683))))

(assert (=> b!414469 (= res!241090 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12390 _keys!709))))))

(declare-fun bm!28735 () Bool)

(assert (=> bm!28735 (= call!28738 (getCurrentListMapNoExtraKeys!1150 (ite c!54920 lt!190020 _keys!709) (ite c!54920 lt!190016 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28736 () Bool)

(assert (=> bm!28736 (= call!28739 (getCurrentListMapNoExtraKeys!1150 (ite c!54920 _keys!709 lt!190020) (ite c!54920 _values!549 lt!190016) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414470 () Bool)

(declare-fun res!241082 () Bool)

(assert (=> b!414470 (=> (not res!241082) (not e!247683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414470 (= res!241082 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17631 () Bool)

(declare-fun mapRes!17631 () Bool)

(assert (=> mapIsEmpty!17631 mapRes!17631))

(declare-fun mapNonEmpty!17631 () Bool)

(declare-fun tp!34092 () Bool)

(declare-fun e!247681 () Bool)

(assert (=> mapNonEmpty!17631 (= mapRes!17631 (and tp!34092 e!247681))))

(declare-fun mapValue!17631 () ValueCell!4993)

(declare-fun mapKey!17631 () (_ BitVec 32))

(declare-fun mapRest!17631 () (Array (_ BitVec 32) ValueCell!4993))

(assert (=> mapNonEmpty!17631 (= (arr!12039 _values!549) (store mapRest!17631 mapKey!17631 mapValue!17631))))

(declare-fun b!414471 () Bool)

(declare-fun tp_is_empty!10673 () Bool)

(assert (=> b!414471 (= e!247681 tp_is_empty!10673)))

(declare-fun b!414472 () Bool)

(declare-fun e!247678 () Bool)

(declare-fun e!247676 () Bool)

(assert (=> b!414472 (= e!247678 (and e!247676 mapRes!17631))))

(declare-fun condMapEmpty!17631 () Bool)

(declare-fun mapDefault!17631 () ValueCell!4993)

