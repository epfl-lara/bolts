; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131988 () Bool)

(assert start!131988)

(declare-fun b_free!31669 () Bool)

(declare-fun b_next!31669 () Bool)

(assert (=> start!131988 (= b_free!31669 (not b_next!31669))))

(declare-fun tp!111260 () Bool)

(declare-fun b_and!51089 () Bool)

(assert (=> start!131988 (= tp!111260 b_and!51089)))

(declare-fun bm!69239 () Bool)

(declare-datatypes ((V!59037 0))(
  ( (V!59038 (val!19050 Int)) )
))
(declare-datatypes ((tuple2!24628 0))(
  ( (tuple2!24629 (_1!12324 (_ BitVec 64)) (_2!12324 V!59037)) )
))
(declare-datatypes ((List!36144 0))(
  ( (Nil!36141) (Cons!36140 (h!37586 tuple2!24628) (t!50845 List!36144)) )
))
(declare-datatypes ((ListLongMap!22249 0))(
  ( (ListLongMap!22250 (toList!11140 List!36144)) )
))
(declare-fun call!69242 () ListLongMap!22249)

(declare-fun call!69246 () ListLongMap!22249)

(assert (=> bm!69239 (= call!69242 call!69246)))

(declare-fun mapNonEmpty!58621 () Bool)

(declare-fun mapRes!58621 () Bool)

(declare-fun tp!111259 () Bool)

(declare-fun e!860212 () Bool)

(assert (=> mapNonEmpty!58621 (= mapRes!58621 (and tp!111259 e!860212))))

(declare-datatypes ((ValueCell!18062 0))(
  ( (ValueCellFull!18062 (v!21848 V!59037)) (EmptyCell!18062) )
))
(declare-fun mapValue!58621 () ValueCell!18062)

(declare-datatypes ((array!103063 0))(
  ( (array!103064 (arr!49729 (Array (_ BitVec 32) ValueCell!18062)) (size!50280 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103063)

(declare-fun mapRest!58621 () (Array (_ BitVec 32) ValueCell!18062))

(declare-fun mapKey!58621 () (_ BitVec 32))

(assert (=> mapNonEmpty!58621 (= (arr!49729 _values!470) (store mapRest!58621 mapKey!58621 mapValue!58621))))

(declare-fun b!1545370 () Bool)

(declare-fun e!860214 () ListLongMap!22249)

(declare-fun e!860213 () ListLongMap!22249)

(assert (=> b!1545370 (= e!860214 e!860213)))

(declare-fun c!141575 () Bool)

(declare-fun lt!666252 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545370 (= c!141575 (and (not lt!666252) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!436 () V!59037)

(declare-fun c!141573 () Bool)

(declare-fun call!69243 () ListLongMap!22249)

(declare-fun call!69244 () ListLongMap!22249)

(declare-fun call!69245 () ListLongMap!22249)

(declare-fun minValue!436 () V!59037)

(declare-fun bm!69240 () Bool)

(declare-fun +!4870 (ListLongMap!22249 tuple2!24628) ListLongMap!22249)

(assert (=> bm!69240 (= call!69246 (+!4870 (ite c!141573 call!69244 (ite c!141575 call!69245 call!69243)) (ite (or c!141573 c!141575) (tuple2!24629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24629 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545371 () Bool)

(declare-fun res!1059842 () Bool)

(declare-fun e!860209 () Bool)

(assert (=> b!1545371 (=> (not res!1059842) (not e!860209))))

(declare-datatypes ((array!103065 0))(
  ( (array!103066 (arr!49730 (Array (_ BitVec 32) (_ BitVec 64))) (size!50281 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103065)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103065 (_ BitVec 32)) Bool)

(assert (=> b!1545371 (= res!1059842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545372 () Bool)

(declare-fun res!1059848 () Bool)

(assert (=> b!1545372 (=> (not res!1059848) (not e!860209))))

(assert (=> b!1545372 (= res!1059848 (and (= (size!50280 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50281 _keys!618) (size!50280 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545373 () Bool)

(declare-fun tp_is_empty!37945 () Bool)

(assert (=> b!1545373 (= e!860212 tp_is_empty!37945)))

(declare-fun bm!69241 () Bool)

(assert (=> bm!69241 (= call!69245 call!69244)))

(declare-fun b!1545374 () Bool)

(declare-fun e!860210 () Bool)

(assert (=> b!1545374 (= e!860210 tp_is_empty!37945)))

(declare-fun b!1545375 () Bool)

(declare-fun e!860208 () ListLongMap!22249)

(assert (=> b!1545375 (= e!860208 call!69242)))

(declare-fun res!1059847 () Bool)

(assert (=> start!131988 (=> (not res!1059847) (not e!860209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131988 (= res!1059847 (validMask!0 mask!926))))

(assert (=> start!131988 e!860209))

(declare-fun array_inv!38599 (array!103065) Bool)

(assert (=> start!131988 (array_inv!38599 _keys!618)))

(assert (=> start!131988 tp_is_empty!37945))

(assert (=> start!131988 true))

(assert (=> start!131988 tp!111260))

(declare-fun e!860215 () Bool)

(declare-fun array_inv!38600 (array!103063) Bool)

(assert (=> start!131988 (and (array_inv!38600 _values!470) e!860215)))

(declare-fun b!1545376 () Bool)

(declare-fun res!1059843 () Bool)

(assert (=> b!1545376 (=> (not res!1059843) (not e!860209))))

(declare-datatypes ((List!36145 0))(
  ( (Nil!36142) (Cons!36141 (h!37587 (_ BitVec 64)) (t!50846 List!36145)) )
))
(declare-fun arrayNoDuplicates!0 (array!103065 (_ BitVec 32) List!36145) Bool)

(assert (=> b!1545376 (= res!1059843 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36142))))

(declare-fun b!1545377 () Bool)

(assert (=> b!1545377 (= e!860213 call!69242)))

(declare-fun b!1545378 () Bool)

(declare-fun res!1059846 () Bool)

(declare-fun e!860207 () Bool)

(assert (=> b!1545378 (=> (not res!1059846) (not e!860207))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545378 (= res!1059846 (validKeyInArray!0 (select (arr!49730 _keys!618) from!762)))))

(declare-fun b!1545379 () Bool)

(declare-fun res!1059844 () Bool)

(assert (=> b!1545379 (=> (not res!1059844) (not e!860209))))

(assert (=> b!1545379 (= res!1059844 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50281 _keys!618))))))

(declare-fun b!1545380 () Bool)

(assert (=> b!1545380 (= e!860209 e!860207)))

(declare-fun res!1059845 () Bool)

(assert (=> b!1545380 (=> (not res!1059845) (not e!860207))))

(assert (=> b!1545380 (= res!1059845 (bvslt from!762 (size!50281 _keys!618)))))

(declare-fun lt!666253 () ListLongMap!22249)

(assert (=> b!1545380 (= lt!666253 e!860214)))

(assert (=> b!1545380 (= c!141573 (and (not lt!666252) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545380 (= lt!666252 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69242 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6589 (array!103065 array!103063 (_ BitVec 32) (_ BitVec 32) V!59037 V!59037 (_ BitVec 32) Int) ListLongMap!22249)

(assert (=> bm!69242 (= call!69244 (getCurrentListMapNoExtraKeys!6589 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545381 () Bool)

(assert (=> b!1545381 (= e!860207 (not true))))

(declare-fun lt!666251 () ListLongMap!22249)

(declare-fun contains!10043 (ListLongMap!22249 (_ BitVec 64)) Bool)

(assert (=> b!1545381 (contains!10043 (+!4870 lt!666251 (tuple2!24629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49730 _keys!618) from!762))))

(declare-datatypes ((Unit!51448 0))(
  ( (Unit!51449) )
))
(declare-fun lt!666254 () Unit!51448)

(declare-fun addStillContains!1225 (ListLongMap!22249 (_ BitVec 64) V!59037 (_ BitVec 64)) Unit!51448)

(assert (=> b!1545381 (= lt!666254 (addStillContains!1225 lt!666251 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49730 _keys!618) from!762)))))

(assert (=> b!1545381 (= lt!666251 (getCurrentListMapNoExtraKeys!6589 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58621 () Bool)

(assert (=> mapIsEmpty!58621 mapRes!58621))

(declare-fun b!1545382 () Bool)

(assert (=> b!1545382 (= e!860208 call!69243)))

(declare-fun b!1545383 () Bool)

(assert (=> b!1545383 (= e!860214 (+!4870 call!69246 (tuple2!24629 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545384 () Bool)

(declare-fun c!141574 () Bool)

(assert (=> b!1545384 (= c!141574 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666252))))

(assert (=> b!1545384 (= e!860213 e!860208)))

(declare-fun bm!69243 () Bool)

(assert (=> bm!69243 (= call!69243 call!69245)))

(declare-fun b!1545385 () Bool)

(assert (=> b!1545385 (= e!860215 (and e!860210 mapRes!58621))))

(declare-fun condMapEmpty!58621 () Bool)

(declare-fun mapDefault!58621 () ValueCell!18062)

