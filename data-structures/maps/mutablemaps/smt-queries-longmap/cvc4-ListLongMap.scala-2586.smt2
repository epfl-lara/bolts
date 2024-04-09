; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39346 () Bool)

(assert start!39346)

(declare-fun b_free!9605 () Bool)

(declare-fun b_next!9605 () Bool)

(assert (=> start!39346 (= b_free!9605 (not b_next!9605))))

(declare-fun tp!34344 () Bool)

(declare-fun b_and!17103 () Bool)

(assert (=> start!39346 (= tp!34344 b_and!17103)))

(declare-fun b!416940 () Bool)

(declare-fun e!248818 () Bool)

(assert (=> b!416940 (= e!248818 true)))

(declare-datatypes ((V!15447 0))(
  ( (V!15448 (val!5423 Int)) )
))
(declare-datatypes ((tuple2!7006 0))(
  ( (tuple2!7007 (_1!3513 (_ BitVec 64)) (_2!3513 V!15447)) )
))
(declare-datatypes ((List!7059 0))(
  ( (Nil!7056) (Cons!7055 (h!7911 tuple2!7006) (t!12337 List!7059)) )
))
(declare-datatypes ((ListLongMap!5933 0))(
  ( (ListLongMap!5934 (toList!2982 List!7059)) )
))
(declare-fun lt!191021 () ListLongMap!5933)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!191023 () V!15447)

(declare-fun lt!191018 () tuple2!7006)

(declare-fun +!1193 (ListLongMap!5933 tuple2!7006) ListLongMap!5933)

(assert (=> b!416940 (= (+!1193 lt!191021 lt!191018) (+!1193 (+!1193 lt!191021 (tuple2!7007 k!794 lt!191023)) lt!191018))))

(declare-fun lt!191028 () V!15447)

(assert (=> b!416940 (= lt!191018 (tuple2!7007 k!794 lt!191028))))

(declare-datatypes ((Unit!12287 0))(
  ( (Unit!12288) )
))
(declare-fun lt!191019 () Unit!12287)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!16 (ListLongMap!5933 (_ BitVec 64) V!15447 V!15447) Unit!12287)

(assert (=> b!416940 (= lt!191019 (addSameAsAddTwiceSameKeyDiffValues!16 lt!191021 k!794 lt!191023 lt!191028))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5035 0))(
  ( (ValueCellFull!5035 (v!7666 V!15447)) (EmptyCell!5035) )
))
(declare-datatypes ((array!25349 0))(
  ( (array!25350 (arr!12121 (Array (_ BitVec 32) ValueCell!5035)) (size!12473 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25349)

(declare-fun lt!191020 () V!15447)

(declare-fun get!5999 (ValueCell!5035 V!15447) V!15447)

(assert (=> b!416940 (= lt!191023 (get!5999 (select (arr!12121 _values!549) from!863) lt!191020))))

(declare-fun lt!191027 () ListLongMap!5933)

(declare-datatypes ((array!25351 0))(
  ( (array!25352 (arr!12122 (Array (_ BitVec 32) (_ BitVec 64))) (size!12474 (_ BitVec 32))) )
))
(declare-fun lt!191026 () array!25351)

(assert (=> b!416940 (= lt!191027 (+!1193 lt!191021 (tuple2!7007 (select (arr!12122 lt!191026) from!863) lt!191028)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15447)

(assert (=> b!416940 (= lt!191028 (get!5999 (select (store (arr!12121 _values!549) i!563 (ValueCellFull!5035 v!412)) from!863) lt!191020))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!678 (Int (_ BitVec 64)) V!15447)

(assert (=> b!416940 (= lt!191020 (dynLambda!678 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15447)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!15447)

(declare-fun lt!191025 () array!25349)

(declare-fun getCurrentListMapNoExtraKeys!1185 (array!25351 array!25349 (_ BitVec 32) (_ BitVec 32) V!15447 V!15447 (_ BitVec 32) Int) ListLongMap!5933)

(assert (=> b!416940 (= lt!191021 (getCurrentListMapNoExtraKeys!1185 lt!191026 lt!191025 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17757 () Bool)

(declare-fun mapRes!17757 () Bool)

(declare-fun tp!34343 () Bool)

(declare-fun e!248817 () Bool)

(assert (=> mapNonEmpty!17757 (= mapRes!17757 (and tp!34343 e!248817))))

(declare-fun mapValue!17757 () ValueCell!5035)

(declare-fun mapKey!17757 () (_ BitVec 32))

(declare-fun mapRest!17757 () (Array (_ BitVec 32) ValueCell!5035))

(assert (=> mapNonEmpty!17757 (= (arr!12121 _values!549) (store mapRest!17757 mapKey!17757 mapValue!17757))))

(declare-fun b!416941 () Bool)

(declare-fun res!242849 () Bool)

(declare-fun e!248813 () Bool)

(assert (=> b!416941 (=> (not res!242849) (not e!248813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416941 (= res!242849 (validKeyInArray!0 k!794))))

(declare-fun b!416942 () Bool)

(declare-fun res!242846 () Bool)

(assert (=> b!416942 (=> (not res!242846) (not e!248813))))

(declare-fun _keys!709 () array!25351)

(assert (=> b!416942 (= res!242846 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12474 _keys!709))))))

(declare-fun call!28990 () ListLongMap!5933)

(declare-fun b!416943 () Bool)

(declare-fun e!248812 () Bool)

(declare-fun call!28991 () ListLongMap!5933)

(assert (=> b!416943 (= e!248812 (= call!28991 (+!1193 call!28990 (tuple2!7007 k!794 v!412))))))

(declare-fun b!416944 () Bool)

(declare-fun res!242854 () Bool)

(assert (=> b!416944 (=> (not res!242854) (not e!248813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416944 (= res!242854 (validMask!0 mask!1025))))

(declare-fun b!416945 () Bool)

(declare-fun e!248815 () Bool)

(declare-fun e!248811 () Bool)

(assert (=> b!416945 (= e!248815 (and e!248811 mapRes!17757))))

(declare-fun condMapEmpty!17757 () Bool)

(declare-fun mapDefault!17757 () ValueCell!5035)

