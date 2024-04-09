; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132022 () Bool)

(assert start!132022)

(declare-fun b_free!31703 () Bool)

(declare-fun b_next!31703 () Bool)

(assert (=> start!132022 (= b_free!31703 (not b_next!31703))))

(declare-fun tp!111361 () Bool)

(declare-fun b_and!51123 () Bool)

(assert (=> start!132022 (= tp!111361 b_and!51123)))

(declare-fun b!1546186 () Bool)

(declare-fun e!860670 () Bool)

(declare-fun tp_is_empty!37979 () Bool)

(assert (=> b!1546186 (= e!860670 tp_is_empty!37979)))

(declare-fun b!1546187 () Bool)

(declare-datatypes ((V!59081 0))(
  ( (V!59082 (val!19067 Int)) )
))
(declare-datatypes ((tuple2!24660 0))(
  ( (tuple2!24661 (_1!12340 (_ BitVec 64)) (_2!12340 V!59081)) )
))
(declare-datatypes ((List!36171 0))(
  ( (Nil!36168) (Cons!36167 (h!37613 tuple2!24660) (t!50872 List!36171)) )
))
(declare-datatypes ((ListLongMap!22281 0))(
  ( (ListLongMap!22282 (toList!11156 List!36171)) )
))
(declare-fun e!860669 () ListLongMap!22281)

(declare-fun call!69497 () ListLongMap!22281)

(assert (=> b!1546187 (= e!860669 call!69497)))

(declare-fun mapIsEmpty!58672 () Bool)

(declare-fun mapRes!58672 () Bool)

(assert (=> mapIsEmpty!58672 mapRes!58672))

(declare-fun b!1546188 () Bool)

(declare-fun e!860666 () ListLongMap!22281)

(declare-fun call!69499 () ListLongMap!22281)

(declare-fun minValue!436 () V!59081)

(declare-fun +!4884 (ListLongMap!22281 tuple2!24660) ListLongMap!22281)

(assert (=> b!1546188 (= e!860666 (+!4884 call!69499 (tuple2!24661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69494 () Bool)

(declare-fun call!69498 () ListLongMap!22281)

(declare-fun call!69501 () ListLongMap!22281)

(assert (=> bm!69494 (= call!69498 call!69501)))

(declare-fun b!1546189 () Bool)

(declare-fun res!1060202 () Bool)

(declare-fun e!860673 () Bool)

(assert (=> b!1546189 (=> (not res!1060202) (not e!860673))))

(declare-datatypes ((array!103127 0))(
  ( (array!103128 (arr!49761 (Array (_ BitVec 32) (_ BitVec 64))) (size!50312 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103127)

(declare-datatypes ((List!36172 0))(
  ( (Nil!36169) (Cons!36168 (h!37614 (_ BitVec 64)) (t!50873 List!36172)) )
))
(declare-fun arrayNoDuplicates!0 (array!103127 (_ BitVec 32) List!36172) Bool)

(assert (=> b!1546189 (= res!1060202 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36169))))

(declare-fun b!1546190 () Bool)

(declare-fun e!860667 () Bool)

(assert (=> b!1546190 (= e!860667 (not true))))

(declare-fun zeroValue!436 () V!59081)

(declare-fun lt!666455 () ListLongMap!22281)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun contains!10056 (ListLongMap!22281 (_ BitVec 64)) Bool)

(assert (=> b!1546190 (contains!10056 (+!4884 lt!666455 (tuple2!24661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49761 _keys!618) from!762))))

(declare-datatypes ((Unit!51474 0))(
  ( (Unit!51475) )
))
(declare-fun lt!666458 () Unit!51474)

(declare-fun addStillContains!1238 (ListLongMap!22281 (_ BitVec 64) V!59081 (_ BitVec 64)) Unit!51474)

(assert (=> b!1546190 (= lt!666458 (addStillContains!1238 lt!666455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49761 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18079 0))(
  ( (ValueCellFull!18079 (v!21865 V!59081)) (EmptyCell!18079) )
))
(declare-datatypes ((array!103129 0))(
  ( (array!103130 (arr!49762 (Array (_ BitVec 32) ValueCell!18079)) (size!50313 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103129)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6603 (array!103127 array!103129 (_ BitVec 32) (_ BitVec 32) V!59081 V!59081 (_ BitVec 32) Int) ListLongMap!22281)

(assert (=> b!1546190 (= lt!666455 (getCurrentListMapNoExtraKeys!6603 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1060204 () Bool)

(assert (=> start!132022 (=> (not res!1060204) (not e!860673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132022 (= res!1060204 (validMask!0 mask!926))))

(assert (=> start!132022 e!860673))

(declare-fun array_inv!38627 (array!103127) Bool)

(assert (=> start!132022 (array_inv!38627 _keys!618)))

(assert (=> start!132022 tp_is_empty!37979))

(assert (=> start!132022 true))

(assert (=> start!132022 tp!111361))

(declare-fun e!860672 () Bool)

(declare-fun array_inv!38628 (array!103129) Bool)

(assert (=> start!132022 (and (array_inv!38628 _values!470) e!860672)))

(declare-fun bm!69495 () Bool)

(declare-fun call!69500 () ListLongMap!22281)

(assert (=> bm!69495 (= call!69500 call!69498)))

(declare-fun c!141726 () Bool)

(declare-fun bm!69496 () Bool)

(declare-fun c!141728 () Bool)

(assert (=> bm!69496 (= call!69499 (+!4884 (ite c!141728 call!69501 (ite c!141726 call!69498 call!69500)) (ite (or c!141728 c!141726) (tuple2!24661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69497 () Bool)

(assert (=> bm!69497 (= call!69501 (getCurrentListMapNoExtraKeys!6603 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546191 () Bool)

(declare-fun res!1060200 () Bool)

(assert (=> b!1546191 (=> (not res!1060200) (not e!860673))))

(assert (=> b!1546191 (= res!1060200 (and (= (size!50313 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50312 _keys!618) (size!50313 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69498 () Bool)

(assert (=> bm!69498 (= call!69497 call!69499)))

(declare-fun b!1546192 () Bool)

(assert (=> b!1546192 (= e!860669 call!69500)))

(declare-fun b!1546193 () Bool)

(declare-fun c!141727 () Bool)

(declare-fun lt!666456 () Bool)

(assert (=> b!1546193 (= c!141727 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666456))))

(declare-fun e!860674 () ListLongMap!22281)

(assert (=> b!1546193 (= e!860674 e!860669)))

(declare-fun b!1546194 () Bool)

(declare-fun e!860668 () Bool)

(assert (=> b!1546194 (= e!860672 (and e!860668 mapRes!58672))))

(declare-fun condMapEmpty!58672 () Bool)

(declare-fun mapDefault!58672 () ValueCell!18079)

